local servers = require 'plugins.lsp.servers'

vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls', {
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
})

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
      require('lspconfig').slint_lsp.setup({})
      require('lspconfig').ts_ls.setup({})

      require('lspconfig').rust_analyzer.setup({
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
      })

      require("lspconfig").ols.setup({
        init_options = {
          checker_args = "",
          collections = {
            { name = "root", path = "src" }
          }
        }
      })

      require("lspconfig").lua_ls.setup({
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
      })
    end
  },

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
