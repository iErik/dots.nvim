local config = {
  color_icons = true,
  default = true,
  strict = true
}


return {
  { -- Nice UI text icons
    "nvim-tree/nvim-web-devicons",

    config = function ()
      require('nvim-web-devicons').setup(config)
    end
  }
}
