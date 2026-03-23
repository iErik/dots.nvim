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
      -- ft_to_lang was removed in Neovim 0.10; get_lang is the replacement
      if not vim.treesitter.language.ft_to_lang then
        vim.treesitter.language.ft_to_lang = vim.treesitter.language.get_lang
      end
      require('telescope').setup(config)
    end
  }
}
