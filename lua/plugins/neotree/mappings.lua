local utils = require "utils"

local mappings = {
  -- Navigation
  -- ----------

  -- Expand or collapse a folder. If a file is selected,
  -- open it in the window closest to the tree
  ["o"] = { "open", nowait = true },

  -- Same as open, but opens in a new tab
  ["t"] = { "open_tabnew" },

  -- Close node if it is open, else close it's parent.
  ["C"] = { "close_node" },

  -- Close all nodes in the tree
  ["z"] = { "close_all_nodes" },

  -- Expands all directory nodes in the tree recursively
  ["<tab>"] = { "expand_all_nodes" },

  -- Expand or collapse a node with children, which may be a
  -- directory or a nested file
  ["<space>"] = { "toggle_node" },

  -- Toggles preview mode
  ["P"] = { "toggle_preview" },

  -- Close preview or floating neo-tree window
  ["<esc>"] = { "cancel" },

  -- Changes the root directory to the currently selected
  -- folder
  ["."] = { "set_root" },

  -- Moves the root directory up one level
  ["<bs>"] = { "navigate_up" },

  -- Switches to the previous source
  ["<"] = { "prev_source" },

  -- Switches to the next source
  [">"] = { "next_source" },

  -- File Actions
  -- ------------

  ["a"] = { "add", config = { show_path = "none" } },

  ["A"] = { "add_directory" },

  ["d"] = { "delete" },

  ["i"] = { "show_file_details" },

  ["r"] = { "rename" },

  ["y"] = { "copy_to_clipboard" },

  ["m"] = { "cut_to_clipboard" },

  ["p"] = { "paste_from_clipboard" },

  -- View Changes / Ordering
  -- -----------------------

  -- Toggle whether hidden (filtered items) are shown or not
  ["H"] = { "toggle_hidden" },

  -- Rescan the filesystem and redraw the tree. Changes made
  -- within nvim should be detected automatically, but this
  -- is useful for changes made elsewhere
  ["R"] = { "refresh" },

  -- Sort by
  ["so"] = { "order_by_created" },
  ["sd"] = { "order_by_diagnostics" },
  ["sg"] = { "order_by_git_status" },
  ["sm"] = { "order_by_modified" },
  ["sn"] = { "order_by_name" },
  ["ss"] = { "order_by_size" },
  ["st"] = { "order_by_type" },

  ["oc"] = "noop",
  ["od"] = "noop",
  ["og"] = "noop",
  ["om"] = "noop",
  ["on"] = "noop",
  ["os"] = "noop",
  ["ot"] = "noop"
}

-- Toggle Command
-- --------------

utils.keymap(
  'ni',
  '<C-n>',
  ':Neotree filesystem reveal left toggle<CR>'
)

utils.keymap(
  'ni',
  '<C-m>',
  ':Neotree buffers reveal left toggle<CR>'
)

return mappings
