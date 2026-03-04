local packages = {
  require("plugins.langs"),
  require("plugins.web-devicons"),
  require("plugins.lsp"),
  require("plugins.telescope"),
  require("plugins.treesitter"),

  --require("plugins.bufferline"),
  require("plugins.incline"),
  require("plugins.lualine"),
  require("plugins.tabby"),

  --require("plugins.chadtree"),
  require("plugins.neotree"),

  require("plugins.dashboard"),
  require("plugins.activate"),

  require("plugins.fzf"),
  require("plugins.autopair"),
  require("plugins.indent-blankline"),
  require("plugins.neomux"),
  require("plugins.emmet"),

  require("plugins.colorschemes"),
  require("plugins.direnv"),
  require("plugins.claude"),
  require("plugins.eslint"),
}

require("lazy").setup(packages)
