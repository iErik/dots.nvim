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
  --[[
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    priority = 20,
    lazy = false,
    config = function ()
      local lspzero = require("lsp-zero")

      lspzero.extend_lspconfig()
      lspzero.on_attach(function (client, bufnr)
        lspzero.default_keymaps({ buffer = bufnr })
      end)
    end
  },
  --]]

  {
    "williamboman/mason.nvim",
    priority = 25,
    lazy = false,
    config = function ()
      require('mason').setup(mason)
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    priority = 40,
    lazy = false,
    config = function ()
      --local lspzero = require("lsp-zero")

      require("mason-lspconfig").setup({
        ensure_installed = servers,

        automatic_installation = true,

        handlers = {
          function(server_name)
            require('lspconfig')[server_name].setup({})
          end
          --lspzero.default_setup
        }
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 10,
    config = function ()
      vim.lsp.enable('slint_lsp')
      vim.lsp.enable('ts_ls')
      --require('lspconfig').slint_lsp.setup({})
      --require('lspconfig').ts_ls.setup({})

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
}
