return {

  { -- Activate.nvim plugin for searching and managing
    -- plugins through Lazy.nvim
    "roobert/activate.nvim",
    keys = {
      {
        "<leader>P",
        '<CMD>lua require("activate").list_plugins()<CR>',
        desc = "Plugins"
      }
    },

    dependencies = {
      {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { { "nvim-lua/plenary.nvim" } }
      }
    }
  }
}
