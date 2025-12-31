local config = {
  color_icons = true,
  default = true,
  strict = false,
  variant = "dark",

  --[[
  override = {
    ["odin"] = {
      icon = "  ",
      color = "#1E5085",
      name = "Odin"
    },

  },
  --]]

  override_by_extension = {
    ["odin"] = {
      icon = " ",
      color = "#1E5085",
    },
    ["glsl"] = {
      icon = " ",
      color = "#36BA98",
    },
    ["slint"] = {
      icon = "",
      color = "#2379F4",
    }
  }
}

local _tempIcons = {
  " ", "", " ", " ",
  " ", "󰍳 ", "󱙧 ", " ",
  "󰅨 ", "󰠳 ", "󱞖 ", "󱑷 ",
  " ", " ", " ", " ",
  " ", " ", " ", " ",
  " ", " ", " ", " ",
  "󰠖 ", "⚡", " ", " ",
  "󱠓 ", "󰮭 "
}

return {
  { -- Nice UI text icons
    "nvim-tree/nvim-web-devicons",

    lazy = false,
    priority = 1,
    config = function ()
      local devicons = require "nvim-web-devicons"

      devicons.setup(config)
    end
  }
}
