local config = {
  disable_filetype = {
    'TelescopePrompt',
    'spectre_panel'
  },

  disable_in_macro        = true,
  disable_in_visualblock  = false,
  disable_in_replace_mode = true,
  ignored_next_char       = "[=[[%w%%%'%[%\"%.%`%$]]=]",
  enable_moveright        = true,

  -- Add bracket pairs after quote
  enable_afterquote       = true,

  -- Check bracket in same line
  enable_check_bracket_line = true,
  enable_bracked_in_quote   = true,
  enable_abbr               = false,

  -- Switch for basic rule break undo sequence
  break_undo                = true,
  check_ts                  = true,
  map_cr                    = true,
  map_bs                    = true,
  -- Map the <C-h> key to delete pair,
  map_c_h                   = false,
  -- Map <C-w> to delete a pair if possible
  map_c_w                   = false
}

return {
  { -- Automatically close pairs (quotes, parenthesis etc)
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function ()
      require("nvim-autopairs").setup(config)
    end
  }
}
