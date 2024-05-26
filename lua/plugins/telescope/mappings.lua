local utils = require "utils"

-- Vim-Telescope keymaps
-- ---------------------

utils.keymap("nit", "<C-b>", ":Telescope<CR>")
utils.keymap("nit", "<C-p>", ":Telescope find_files<CR>")
utils.keymap("nit", "<C-i>", ":Telescope live_grep<CR>")
utils.keymap("nit", "<C-o>", ":Telescope colorscheme<CR>")

return { }
