local config = {
  -- Enables or disables indent-blanklike
  enabled = true,

  -- Sets the amount indent-blankline debounces refreshes in
  -- milliseconds
  debounce = 200,

  -- Configures the viewport of where indentation guides are
  -- generated
  viewport_buffer = {
    -- Minimum number of lines above and below what is
    -- currently visible in the window for which indentation
    -- guides will be generated
    min = 30,

    -- (Deprecated) Maximum number of lines above and below
    -- of what is currently visible in the window for which
    -- indentation guides will be generated
    --
    -- (This functionality has been deprecated, and the
    -- exact offset can be chosen with `min` instead)
    max = 500
  },

  -- Configures the indentation
  indent = {
    -- Character, or list of characters, that gets used to
    -- display the indentation guide. Each character has to
    -- have a display width of 0 or 1.
    char = { '|', '¦', '┆', '┊' },

    -- Character, or list of characters, that gets used to
    -- display the indentation guide for tabs. Each
    -- character has to have a display width of 0 or 1
    tab_char = { '|', '¦', '┆', '┊' },

    -- Highlight group, or list of highlight groups, that
    -- get applied to the indentation guide
    highlight = "IblIndent",

    -- Caps the number of indentation levels by looking at
    -- the surrounding code
    smart_indent_cap = true,

    -- Virtual text priority for the indentation guide
    priority = 1,

    -- Repeat indentation guide virtual text on wrapped
    -- lines if 'breakindent' is set, and 'breakindentopt'
    -- does not contain any of the following: [ 'column',
    -- 'sbr', 'shift' with a negative value ]
    repeat_linebreak = true
  },

  -- Configures the whitespace
  whitespace = {
    -- Highlight group, or list of highlight groups, that
    -- get applied to the whitespace
    highlight = "IblWhitespace",

    -- Removes trailing whitespace on blanklines. Turn this
    -- off if you want to add background color to the
    -- whitespace highlight group
    remove_blankline_trail = true
  },

  -- Configures the scope
  --
  -- The scope is *not* the current indentation level.
  -- Instead, it is the indentation level where variables or
  -- functions are accessible. This depends on the language
  -- you are writing.
  --
  -- Scope requires treesitter to be set up
  scope = {
    -- Enables or disables scope
    enabled = true,

    -- Character, or list of characters, that gets used to
    -- display the indentation guide. Each character has to
    -- have a display width of 0 or 1.
    char = { '|', '¦', '┆', '┊' },

    -- Shows an underline on the first line of the scope
    show_start = false,

    -- Shows an underline on the last line of the scope
    show_end = true,

    -- Shows an underline on the first line of the scope
    -- starting at the exact start of the scope (even if
    -- this is to the right of the indent guide) and an
    -- underline on the last line of the scope ending at the
    -- exact end of the scope
    show_exact_scope = false,

    -- Checks for the current scope in injected treesitter
    -- languages. This also influences if the scope gets
    -- excluded or not.
    injected_languages = true,

    -- Highlight group, or list of highlight groups, that
    -- gets applied to the scope
    highlight = "IblScope",

    -- Virtual text priority for the scope
    priority = 1024,

    -- Configures additional nodes to be used as scope
    include = {
      -- Map of language to a list of node types which can
      -- be used as scope
      --
      -- Refer to documentation
      node_type = {}
    },

    -- Configures nodes or languages to be excluded from
    -- scope
    exclude = {
      -- List of treesitter languages for which scope is
      -- disabled
      language = {},

      -- Map of language to a list of node types which
      -- should not be used as scope
      --
      -- Refer to documentation
      node_type = {}
    }
  },

  -- Configures what is excluded from indent-blankline
  exclude = {
    -- List of 'filetype's for which indent-blankline is
    -- disabled
    filetypes = {
      "lspinfo",
      "packer",
      "checkhealth",
      "help",
      "man",
      "gitcommit",
      "TelescopePrompt",
      "TelescopeResults"
    },

    -- List of 'buftype's for which indent-blankline is
    -- disabled
    buftypes = { "terminal", "nofile", "quickfix", "prompt" }
  }
}

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function ()
      require("ibl").setup(config)
    end
  }
}
