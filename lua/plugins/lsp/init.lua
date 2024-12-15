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
      --require('lspconfig').rust_analyzer.setup({ });
    end
  },

  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  { "L3MON4D3/LuaSnip" },
  { "slint-ui/vim-slint"}
}
