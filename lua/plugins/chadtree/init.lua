local appearance = require 'plugins.chadtree.appearance'
local keymaps = require 'plugins.chadtree.keymaps'
local config = require 'plugins.chadtree.config'

return {
  { -- ChadTree File Explorer
    "ms-jpq/chadtree",
    branch = "chad",
    build = "python -m chadtree deps",

    config = function ()
      vim.api.nvim_set_var("chadtree_settings", {
        options = config.options,
        ignore = config.ignore,
        theme = appearance.theme,
        view = appearance.view,
        keymap = keymaps
      })
  end
  }
}
