local colorschemes = {
  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    config = function (_, opts)
      require("witch").setup(opts)
    end
  },

  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000
  },

  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000
  },

  {
    "samharju/synthweave.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("night-owl").setup()
    end
  },

  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "ptdewey/darkearth-nvim",
    priority = 1000,
    lazy = false
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
  },

  {
    "rose-pine/neovim",
    as = "rose-pine",
    lazy = false,
    priority = 1000
  },

  {
    "loganswartz/sunburn.nvim",
    priority = 1000,
    lazy = false,
    dependencies = { { "loganswartz/polychrome.nvim" } }
  },

  {
    "comfysage/evergarden",
    priority = 1000,
    lazy = false,
    opts = {}
  },

  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "Abstract-IDE/Abstract-cs",
    lazy = false,
    priority = 1000
  },

  {
    "rafamadriz/neon",
    lazy = false,
    priority = 1000
  },

  {
    "tomasiser/vim-code-dark",
    lazy = false,
    priority = 1000
  },

  {
    "christianchiarulli/nvcode-color-schemes.vim",
    lazy = false,
    priority = 1000
  },

  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "alexmozaidze/palenight.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("nordic").load()
    end
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("kanagawa").setup({
        compile = false,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = { },
        transparent = true,
        dimInactive = true,
        terminalColors = true,
        theme = "dragon"
      })
    end
  }
}

return colorschemes
