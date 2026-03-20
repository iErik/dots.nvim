local utils = require 'utils'

--[
-- Key-mapping in Vim is honestly kind of stupid because vim
-- has 30 different commands to map keys, and each of them
-- probably have 500 different variations. So just so we
-- don't lose our minds trying to understand what's going on
-- and how this works, I'll attempt to leave a brief
-- explanation of how Key-mapping works here.
--
-- Here we go ->
-- -------------
--
-- The basic way of mapping keys in Vim is using the :map
-- command, the map command has 5 variations, one for each
-- mode:
--
-- :map - Applies to Normal, Visual, Select and
-- Operator-pending modes
-- :nmap - Applies to Normal mode only
-- :vmap - Applies to Visual and Select modes only
-- :imap - Applies to insert mode only
-- :cmap - Applies to command-line mode only
--
-- The basic syntax is: map <key-combination> <command>
--
-- Then, each of these have their own variations, if you add
-- the words [nore] right before the "m" letter in them, it
-- changes their meaning. [nore] in this case prevents
-- recursive mappings, meaning they don't allow the command
-- to call other mapppings, so we have these options as
-- well:
--
-- :noremap - Applies to Normal, Visual, Selection and
-- Operator-pending modes, without recursivity
-- :nnoremap - Applies to Normal mode, without recursivity
-- :vnoremap - Applies to Visual mode, without recursivity
-- :inoremap - Applies to Insert modal, without recursivity
-- :cnoremap - Applies to command-line mode, without
-- recursivity
--
-- By default, all mappings applied using the utils.keymap
-- function are nonrecursive, in order to make them
-- recursive you have to pass the { remap = true } option as
-- the last argument.
--]

-- -> Splits
-- ---------

-- Split Navigation
utils.keymap('tni', '<C-h>', '<C-w>h')
utils.keymap('tni', '<C-j>', '<C-w>j')
utils.keymap('tni', '<C-k>', '<C-w>k')
utils.keymap('tni', '<C-l>', '<C-w>l')

-- Split Creation/Deletion
utils.keymap('tni', '<C-\\>', '<C-w>v')
utils.keymap('tni', '<C-->', '<C-w>s')
utils.keymap('tni', '<C-q>', '<C-w>q')
-- close other splits
utils.keymap('tni', '<C-\'>', ':only<cr>')

-- Move Split to direction X
utils.keymap('tni', '<C-A-h>', '<C-w>H')
utils.keymap('tni', '<C-A-j>', '<C-w>J')
utils.keymap('tni', '<C-A-l>', '<C-w>L')
utils.keymap('tni', '<C-A-k>', '<C-w>K')
-- swap window
utils.keymap('tni', '<C-A-;>', '<C-w>x')

-- Window resizing
utils.keymap('tni', '<C-=>', '<C-w>=')
utils.keymap('tni', '<C-A-\\>', '<C-w>|')

--utils.keymap('ni', '<A-S-[>', ':vertical resize -2<cr>')
--utils.keymap('ni', '<A-S-]>', ':vertical resize +2<cr>')
--utils.keymap('ni', '<C-A-[>', ':resize +2<cr>')
--utils.keymap('ni', '<C-A-]>', ':resize -2<cr>')

utils.keymap('tni', '<C-Left>', ':vertical resize -2<cr>')
utils.keymap('tni', '<C-Right>', ':vertical resize +2<cr>')
utils.keymap('tni', '<C-Up>', ':resize +2<cr>')
utils.keymap('tni', '<C-Down>', ':resize -2<cr>')

-- -> Tabs
-- -------

utils.keymap('tni', '<C-t>', ':tabnew<cr>')
utils.keymap('tni', '<C-A-T>', ':tabc<cr>')
utils.keymap('tni', '<C-S-o>', ':-tabnext<cr>')
utils.keymap('tni', '<C-S-p>', ':tabnext<cr>')

-- -> Buffers
-- ----------

utils.keymap('tn', '<C-[>', ':bprevious<CR>')
utils.keymap('tn', '<C-]>', ':bnext<CR>')
utils.keymap('tn', '<C-x>', ':bp|bd#<CR>')

-- -> Others
-- ---------

-- Map JJ to <Esc>
utils.imap('jj', '<ESC>')

utils.keymap('tni', '<C-Space>', require("lsp_lines").toggle)
