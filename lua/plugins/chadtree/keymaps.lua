local keymap = {
  -- Close ChadTree window, quit if it is the last window
  quit = { "q" },

  -- Increase ChadTree window's width
  bigger = { "+", "=" },

  -- Decrease ChadTree window's width
  smaller = { "-", "_" },

  -- Refresh ChadTree
  refresh = { "<S-r>" },

  -- Change Vim's working directory
  change_dir = { "c" },

  -- Set ChadTree's root to folder at cursor. Does not
  -- change working directory
  change_focus = { "f" },

  -- Set ChadTree's root one level up
  change_focus_up = { "F" },

  -- Open file / toggle folder at cursor
  primary = { "O" },

  -- Open file at cursor, keep cursor in ChadTree's window
  secondary = { "o", "<2-leftmouse>" },

  -- Open file at cursor in a new tab
  tertiary = { "<Tab>", "<middlemouse>" },

  -- Open file at cursor in vertical split
  v_split = { "v" },

  -- Open file at cursor in horizontal split
  h_split = { "h" },

  -- Open file with GUI tools using "open" or "xdg open".
  -- This will open third party tools such as Finder or
  -- Nautilus. Depends on platform and user setup.
  open_sys = { "<S-o>" },

  -- Collapse all subdirectories for directory at cursor.
  collapse = { "]", "`" },

  -- Put cursor at the root of ChadTree
  refocus = { "~" },

  -- Position cursor in ChadTree at currently open buffer,
  -- if the buffer points to a location visible under
  -- ChadTree.
  jump_to_current = { "z" },

  -- Print `ls --long` stat for file under cursor
  stat = { "?" },

  -- Copy paths of files under cursor or visual block
  copy_name = { "Y" },

  -- Copy names of files under cursor or visual block
  copy_basename = { "y" },

  -- Copy relative paths of files under cursor or visual
  -- block
  copy_relname = { "<C-y>" },

  -- Set a glob pattern to narrow down visible files
  filter = { "g" },

  -- Clear filter
  clear_filter = { "G" },

  -- Go to bookmark A-Z
  bookmark_goto = { "B" },

  -- Select files under cursor or visual block
  select = { "s" },

  -- Clear selection
  clear_selection = { "S" },

  -- Create new file at location under cursor. Files ending
  -- with platform specific path separator will be folders.
  -- Intermediary folders are created automatically
  new = { "a" },

  -- Create links at location under cursor from selection.
  -- Links are always relative.
  -- Intermediary folders are created automatically.
  link = { "L" },

  -- Rename file under cursor
  rename = { "r" },

  -- Toggle all the +x bits of the selected / highlighted
  -- files. Except for directories, where -x will prevent
  -- reading
  toggle_exec = { "X" },

  -- Copy the selected files to location under cursor
  copy = { "p" },

  -- Move the selected files to location under cursor,
  cut = { "m" },

  -- Delete the selected files. Items deleted cannot be
  -- recovered
  delete = { "x", "d" },

  -- Trash the selected files using platform specific trash
  -- command, if they are available. Items trashed may be
  -- recovered
  --
  -- You need `trash` for MacOS and `trash-cli` on Linux
  trash = { "t" },

  -- Toggle "show_hidden" on and off.
  toggle_hidden = { "." },

  -- Toggle "follow" on and off.
  toggle_follow = { "u" },

  -- Toggle "follow_links" on and off
  toggle_follow_links = { "U" },

  -- Toggle "follow_ignore" on and off
  toggle_follow_ignore = { "T" },

  -- Toggle version control integration on and off
  toggle_version_control = { "i" }
}

return keymap
