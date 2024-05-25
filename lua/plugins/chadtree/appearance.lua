-- Some options to change ChadTree's appearance
local view = {
  -- Which side to open ChadTree's window on.
  -- One of: [ "left", "right" ]
  open_direction = { "right" },

  -- ChadTree's sort criteria (ordered)
  --
  -- Some of: [
  --   "is_folder",
  --   "ext",
  --   "file_name_lower",
  --   "filename"
  -- ]
  --
  sort_by = {
    "is_folder",
    "ext",
    "file_name_lower",
    "file_name"
  },

  -- ChadTree's window default width
  width = 30,

  -- Set of windoe local options for ChadTree windows
  window_options = {
    cursorline = true,
    number = false,
    relativenumber = false,
    signcolumn = "no",
    winfixwidth = true,
    wrap = false
  }
}

-- Theme options
local theme = {
  -- Icon set to be used
  -- One of: [ "devicons", "emoji", "ascii", "ascii_hollow"]
  icon_glyph_set = "devicons",

  -- On Unix, the command `ls` can produce coloured results
  -- based on the LS_COLORS environmental variable. ChadTree
  -- can pretend it's `ls` by using the value `env` for this
  -- setting, legal values are:
  --
  -- [
  --   "env",
  --   "solarized_dark_256",
  --   "solarized_dark",
  --   "solarized_light",
  --   "solarized_universal",
  --   "nord",
  --   "trapdoor",
  --   "nerdtree_syntax_light",
  --   "nerdtree_syntax_dark"
  -- ]
  --
  text_colour_set = "nord",

  -- Icon colours to use.
  -- One of: [ "github", "none" ]
  icon_colour_set = "github",

  -- Vim come with some built-in highlight groups, these can
  -- used to colour things in ChadTree's window
  highlights = {
    -- These are used for files that are ignored by user
    -- supplied pattern in the `ignore` settings and by
    -- version control
    ignored = "Comment",

    -- These are used to show bookmarks
    bookmarks = "Title",

    -- These are used to notify the number of times a file /
    -- folder appears in the `quickfix` list
    quickfix = "Label",

    -- These are used to put a version control status beside
    -- each file
    version_control = "Comment"
  },
}

return { view, theme }
