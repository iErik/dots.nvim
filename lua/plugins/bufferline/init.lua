local config = function (bl)
  local options = {
    mode = "buffers",
    style_preset = bl.style_preset.default,
    --style_preset = bl.style_preset.minimal,
    --themable = true,

    close_command = "bp|bd#",

    indicator = {
      -- This should be omitted if indicator style is not
      -- icon
      -- icon = '▎',
      icon = "",

      -- One of: [ 'icon', 'underline', 'none' ]
      style = 'underline',
    },

    tab_size = 18,
    color_icons = true,
    show_buffer_icons = true,
    show_close_icon = false,
    show_buffer_close_icons = false,
    separator_style = "slope",

    always_show_bufferline = true
  }

  local highlights = {
    --fill = { fg = "", bg = "" },
    --background = { fg = "", bg = "" }
  }

  return { options = options, highlights = highlights }
end

return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function ()
      local bufferline = require 'bufferline'
      local options = config(bufferline)

      bufferline.setup(options)
    end
  }
}

