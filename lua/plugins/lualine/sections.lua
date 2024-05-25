function line ()
  -- Left section
  ---------------
  local line_a = {
    -- Custom icon
    {
      function()
        return "󰊠   "
      end,
      separator = { left = "", right = "" },
      padding = { left = 2, right = 1 }
    },
    -- Mode
    {
      "mode",
      separator = { left = "", right = "" },
      padding = { left = 0, right = 1 },
      fmt = function (mode)
        return mode:sub(1, 1)
      end,
    }
  }

  local line_b = {
    -- File type (Icon)
    {
      "filetype",
      icon_only = true,
      colored = false,
      padding = 1,
      -- color = { bg = "#2a2c3f", fg = "#FFFFFF" }
    },
    -- File name
    {
      "filename",
      padding = 1,
      separator = { left = "", right = "" },
      -- color = { bg = "#2a2c3f", fg = "#FFFFFF" }
    }
  }

  local line_c = {
    -- Git branch
    {
      "branch",
      icon = "",
      separator = { left = "", right = "" },
      -- color = { fg = colors.fg, bg = colors.color4 },
    },
    -- Git diff (added/mod/removed)
    {
      "diff",
      colored = true,
      icons_enabled = true,
      color = { bg = nil },
      symbols = {
        added = " ",
        modified = " ",
        removed = " "
      },
      separator = { left = "", right = "" },
      padding = { left = 1, right = 1 }
    }
  }

  -- Right section
  ----------------
  local line_x = {
    -- File progress percentage
    "progress",
    {
      function()
        return ""
      end,
      separator = { left = "", right = "" },
      -- color = { bg = colors.color5, fg = "#000000" },
    },
    -- Exact cursor location
    "location",
    {
      function()
        return ""
      end,
      separator = { left = "", right = "" },
      -- color = { bg = colors.color2, fg = "#000000" },
    }
  }

  local line_y = {

  }

  local line_z = {

  }

  return {
    lualine_a = line_a,
    lualine_b = line_b,
    lualine_c = line_c,
    lualine_x = line_x,
    lualine_y = line_y,
    lualine_z = line_z,
  }
end

return line
