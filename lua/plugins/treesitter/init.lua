-- NVim Treesitter is used to provide better integration
-- between NeoVim and Treesitter, also providing better
-- support and cool features for specific languages such
-- as better syntax highlighting and etc.

local parsers = require "plugins.treesitter.parsers"

local config = {
  -- A list of parser names, or "all"
  ensure_installed = parsers,

  -- Install parsers synchronously (only applied to `ensure
  -- installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering
  -- buffer.
  --
  -- Recommentation: set to false if you don't have
  -- `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = {},

  -- If you need to change the installation directory of the
  -- parsers:
  -- parser_install_dir = "/some/path/to/store/parsers"

  highlight = {
    enable = true
  }
}

return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function ()
      require("nvim-treesitter").setup(config)
    end
  }
}
