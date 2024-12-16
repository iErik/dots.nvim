local colorschemes = {
  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    config = function (_, opts)
      --require("witch").setup(opts)
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
    config = function (_, opts)
      --require("night-owl").setup(opts)
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
    opts = {},
    config = function ()
      require("tokyonight").setup({
        style = "moon",
        transparent = true,
        terminal_colors = true,
        lualine_bold = true
      })
    end
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
    config = function ()
      require("catppuccin").setup({
        flavor = "auto",
        transparent_background = true,
        show_end_of_buffer = true,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.15
        }
      })
    end
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
      --require("nordic").load()
    end
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("kanagawa").setup({
        compile = true,
        undercurl = true,
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = { },
        transparent = true,
        dimInactive = false,
        terminalColors = true,
        theme = "dragon"
      })
    end
  },

  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    lazy = false
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000
  },

  {
    "eldritch-theme/eldritch.nvim",
    priority = 1000,
    lazy = false
  },

  {
    "olivercederborg/poimandres.nvim",
    priority = 1000,
    lazy = false
  },

  {
    "maxmx03/fluoromachine.nvim",
    priority = 1000,
    lazy = false
  },

  {
    "sainnhe/edge",
    priority = 1000,
    lazy = false
  },

  {
    "embark-theme/vim",
    priority = 1000,
    lazy = false,
    as = "embark",
  },

  {
    "shaunsingh/moonlight.nvim",
    priority = 1000,
    lazy = false,
  }
}

return colorschemes
