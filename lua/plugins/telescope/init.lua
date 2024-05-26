local mappings = require 'plugins.telescope.mappings'

local config = {
  defaults = {
    mappings = mappings
  },

  pickers = {
    colorscheme = { enable_preview = true }
  }
}

return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { { "nvim-lua/plenary.nvim" } },
    config = function ()
      require('telescope').setup(config)
    end
  }
}
