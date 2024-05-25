local config = {
  -- One of: [ 'doom', 'hyper' ]
  theme = "hyper",

  disable_move = false,

  -- One of: [ 'letter', 'number' ]
  shortcut_type = "letter",

  change_to_vcs_root = false,

  -- Configuration use for the theme
  config = {},

  --hide = { }
  --preview = { }
}

return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",

    config = function ()
      require("dashboard").setup(config)
    end,

    dependencies = { { "nvim-tree/nvim-web-devicons" } }
  }
}
