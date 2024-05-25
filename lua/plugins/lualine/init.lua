local sections = require 'plugins.lualine.sections'

local config = {
	options = {
		theme = "auto",
		globalstatus = true,
		icons_enabled = true,
		always_divide_middle = true,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
    disabled_filetypes = {
      "alpha",
      "dashboard",
      "packer",
      "NVimTree",
      "NERD_tree",
      "CHADTree"
    },
	},
	sections = sections()
}

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
    config = function ()
      require('lualine').setup(config)
    end
  }
}
