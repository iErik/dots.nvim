return {
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  { "L3MON4D3/LuaSnip" },

  {
    "williamboman/mason.nvim",
    config = function ()
      require('mason').setup({})
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        handlers = {
          function (serverName)
            require("lspconfig")[serverName].setup({})
          end
        }
      })
    end
  },

  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",

    config = function ()
      require("lsp-zero").on_attach(
        function (client, bufnr)
          lsp_zero.default_keymaps({ buffer = bufnr })
        end)
    end
  },
}
