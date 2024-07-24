local config = {
  color_icons = true,
  default = true,
  strict = true,

  override_by_extension = {
    ["odin"] = {
      icon = " ",
      color = "#FF0000",
      name = "Odin"
    },
    ["glsl"] = {
      icon = " ",
      color = "#36BA98",
      name = "GLSL"
    }
  }
}

local tempIcons = {
  " ", "", " ", " ",
  " ", "󰍳 ", "󱙧 ", " ",
  "󰅨 ", "󰠳 ", "󱞖 ", "󱑷 "
}

return {
  { -- Nice UI text icons
    "nvim-tree/nvim-web-devicons",

    config = function ()
      local devicons = require "nvim-web-devicons"

      devicons.setup(config)
    end
  }
}
