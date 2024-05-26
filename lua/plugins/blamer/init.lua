return {
  {
    "APZelos/blamer.nvim",
    config = function ()
      vim.g.blamer_enabled = true
      vim.g.blamer_delay = 1000
      vim.g.blamer_show_in_visual_modes = 0
      vim.g.blamer_show_in_insert_modes = 1
    end
  }
}
