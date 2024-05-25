local options = {
  -- ChadTree will highlight currently open file, and open
  -- all its parents
  follow = true,

  -- ChadTree will follow symlinks
  follow_links = true,

  -- ChadTree will guess your locale from unix environmental
  -- variables by default, but you can manually set this
  -- variable
  lang = "en",

  -- ChadTree will attempt to warn you when you try to open
  -- say an image, this is done via the Internet Assigned
  -- Numbers Authority's mimetype database
  mimetypes = {
    -- Show a warning before opening these datatypes
    warn = { "audio", "font", "image", "video" },

    -- Skip warning for these extensions
    allow_exts = { ".ts" }
  },

  -- Change how many lines "{" and "}" scroll
  page_increment = 5,

  -- Lower is more severe
  min_diagnostics_severity = 2,

  -- ChadTree's background refresh rate
  polling_rate = 2.0,

  -- Save & restore currently open folders
  session = true,

  -- Wether to show hidden files
  show_hidden = true,

  version_control = {
    -- Enables version control integration
    enable = true
  }
}

-- ChadTree can ignore showing some files
local ignore = {
  -- File whose name match these exactly will be ignored
  name_exact = { ".DS_STORE", "thumbs.db", ".git" },

  -- File whose name match these glob patterns will be
  -- ignored
  name_glob = {},

  -- Files whose full path match these glob patterns will be
  -- ignored
  path_glob = {},
}

return { options, ignore }
