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
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {}
  },

  {
    "comfysage/evergarden",
    opts = {}
  },

  "marko-cerovac/material.nvim",
  "Abstract-IDE/Abstract-cs",
  "rafamadriz/neon",
  "tomasiser/vim-code-dark",
  "christianchiarulli/nvcode-color-schemes.vim",
  "Mofiqul/vscode.nvim"
}

return colorschemes
