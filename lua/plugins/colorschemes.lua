local colorschemes = {
  {
    "yashguptaz/calvera-dark.nvim",
    lazy = false,
    priority = 100,
    config = function ()
      vim.g.calvera_italic_keywords = false
      vim.g.calvera_borders = true
      vim.g.calvera_contrast = true
      vim.g.calvera_hide_eob = true
      --vim.g.calvera_custom_colors = {contrast = "#0f111a"}
    end
  },

  {
    "kevinm6/kurayami.nvim",
    lazy = false,
    priority = 100,
  },

  {
    "b0o/lavi.nvim",
    dependencies = { "rktjmp/lush.nvim" },
    lazy = false,
    priority = 100,
  },

  {
    "cryptomilk/nightcity.nvim",
    lazy = false,
    priority = 100,
    config = function ()
      require("nightcity").setup({
        -- kabuki or afterlife
        style = "afterlife",
        terminal_colors = true,
        invert_colors = {
          -- Invert colors for the following syntax groups
          cursor = true,
          diff = true,
          error = true,
          search = true,
          selection = false,
          signs = false,
          statusline = true,
          tabline = false,
        },
        font_style = {
          -- Style to be applied to different syntax groups
          comments = { italic = true },
          keywords = { italic = true },
          functions = { bold = true },
          variables = {},
          search = { bold = true },
        },
        -- Plugin integrations. Use `default = false`
        -- to disable all integrations.
        plugins = { default = true },

        --- You can override specific highlights to use
        --- other groups or a hex color function will be
        --- called with a Highlights and ColorScheme table
        ---@param groups Highlight groups
        ---@param colors ColorScheme
        --on_highlights = function(groups, colors) end,
      })
    end
  },

  {
    "Yazeed1s/minimal.nvim",
    lazy = false,
    priority = 100
  },

  {
    "ficcdaf/ashen.nvim",
    lazy = false,
    priority = 100
  },

  { -- Broken, sadly
    "ray-x/starry.nvim",
    enabled = false,
    lazy = false,
    priority = 100
  },

  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 100
  },

  {
    "ramojus/mellifluous.nvim",
    lazy = false,
    priority = 100
  },

  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 100
  },

  {
    "mellow-theme/mellow.nvim",
    lazy = false,
    priority = 100
  },

  {
    "Shadorain/shadotheme",
    lazy = false,
    priority = 1000,
  },

  {
    "eddyekofo94/gruvbox-flat.nvim",
    priority = 1000,
    enabled = true,
    lazy = false,
  },

  {
    "kanenorman/gruvbox-darker.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "presindent/ethereal.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      palette = 1,
      transparent_background = true,
      gamma = 1.00,
      styles = {
        comments = { italic = false },
        keywords = { italic = true },
        identifiers = { italic = true },
        functions = {},
        variables = {},
      },
      terminal_colors = true
    }
  },

  {
    "Sly-Harvey/radium.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "mustardfrog/pinkish_day",
    lazy = false,
    priority = 1000,
    dependencies = { "rktjmp/lush.nvim" }
  },

  {
    "sainttttt/flesh-and-blood",
    lazy = false,
    priority = 1000,
  },

  {
    "Koalhack/koalight.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "water-sucks/darkrose.nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("darkrose").setup({
        styles = {
          bold = true,
          italic = true,
          underline = true
        }
      })
    end
  },

  {
    "Yazeed1s/oh-lucy.nvim",
    lazy = false,
    priority = 1000,
  },

  {
    "rockerBOO/boo-colorscheme-nvim",
    lazy = false,
    priority = 1000,
    config = function ()
      require("boo-colorscheme").setup({
        italic = true
      })
    end
  },

  {
    "frenzyexists/aquarium-vim",
    lazy = false,
    priority = 1000,
  },

  {
    "glepnir/zephyr-nvim",
    lazy = false,
    priority = 1000,
    requires = {
      "nvim-treesitter/nvim-treesitter",
      opt = true
    }
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
    priority = 1000,
    lazy = false
  },

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
    opts = {
      transparent_background = true,
      variant = "hard"
    }
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
