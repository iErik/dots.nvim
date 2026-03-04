local servers = require 'plugins.lsp.servers'

local mason = {
  -- The directory in which to install packages
  --install_root_dir = path.concat {
  --  vim.fn.stdpath "data",
  --  "mason"
  --},

    -- Where Mason should put its bin location in your PATH.
    -- Can be one of:
    -- - "prepend" (default, Mason's bin location is put
    -- first in PATH)
    --
    -- - "append" (Mason's bin location is put at the end
    -- of PATH)
    --
    -- - "skip" (doesn't modify PATH)
    ---@type '"prepend"' | '"append"' | '"skip"'
    PATH = "prepend",

    -- ...
}

return {
  {
    "williamboman/mason.nvim",
    priority = 25,
    lazy = false,
    config = function ()
      require('mason').setup(mason)
    end
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 10,
    config = function ()
      local vue_language_server_path = vim.fn.stdpath('data') .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

      vim.lsp.enable('slint_lsp')
      vim.lsp.enable('vtsls')
      vim.lsp.config('vtsls', {
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = {
                {
                  name = '@vue/typescript-plugin',
                  location = vue_language_server_path,
                  languages = { 'vue' },
                  configNamespace = 'typescript'
                }
              },
            },
          },
        },
        filetypes = {
          'typescript',
          'typescriptreact',
          'javascript',
          'javascriptreact',
          'vue'
        },
      })

      vim.lsp.enable('vue_ls')
      vim.lsp.config('vue_ls', {
        on_init = function(client)
          client.handlers['tsserver/request'] = function(_, result, context)
            local clients = vim.lsp.get_clients({ bufnr = context.bufnr, name = 'vtsls' })

            if #clients == 0 then
              vim.notify('Could not find `vtsls` or `ts_ls` lsp client, `vue_ls` would not work without it.', vim.log.levels.ERROR)
              return
            end
            local ts_client = clients[1]

            local param = unpack(result)
            local id, command, payload = unpack(param)
            ts_client:exec_cmd({
              title = 'vue_request_forward', -- You can give title anything as it's used to represent a command in the UI, `:h Client:exec_cmd`
              command = 'typescript.tsserverRequest',
              arguments = {
                command,
                payload,
              },
            }, { bufnr = context.bufnr }, function(_, r)
                local response = r and r.body
                -- TODO: handle error or response nil here, e.g. logging
                -- NOTE: Do NOT return if there's an error or no response, just return nil back to the vue_ls to prevent memory leak
                local response_data = { { id, response } }

                ---@diagnostic disable-next-line: param-type-mismatch
                client:notify('tsserver/response', response_data)
              end)
          end
        end,
      })

      vim.lsp.enable('rust_analyzer')
      vim.lsp.config['rust_analyzer'] = {
        settings = {
          ['rust-analyzer'] = {
            check = {
              ignore = { "dead_code" }
            },
            diagnostics = {
              enable = true,
              disabled = { "unlinked-file" }
            }
          }
        }
      }

      vim.lsp.enable('ols')
      vim.lsp.config['ols'] = {
        init_options = {
          checker_args = "",
          collections = {
            { name = "root", path = "src" }
          }
        }
      }

      vim.lsp.enable('lua_ls')
      vim.lsp.config['lua_ls'] = {
        on_init = function(client)
          local path = client.workspace_folders[1].name

          if vim.loop.fs_stat(path..'/.luarc.json') or
             vim.loop.fs_stat(path..'/.luarc.jsonc') then
            return
          end

          client.config.settings.Lua = vim.tbl_deep_extend(
            'force', client.config.settings.Lua, {
              runtime = { version = 'LuaJIT' },

              -- Make the server aware of Neovim
              -- runtime files
              workspace = {
                checkThirdParty = true,
                library = {
                  vim.env.VIMRUNTIME
                  -- Depending on the usage, you might want
                  -- to add additional paths here.
                  -- "${3rd}/luv/library"
                  -- "${3rd}/busted/library",
                }
              }
          })
        end,
        settings = {
          Lua = {}
        }
      }
    end
  },

  --[[
  {
    "pmizio/typescript-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig"
    },
    opts = {},
  },
  --]]


  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },

  {
    --"iErik/lsp_lines.nvim",
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    priority = 11,
    dependencies = { "neovim/nvim-lspconfig" },
    config = function ()
      require("lsp_lines").setup()

      vim.diagnostic.config({
        virtual_text = false,
        virtual_lines = { only_current_line = true }
      })
    end
  }

  --{ "L3MON4D3/LuaSnip" },
}
