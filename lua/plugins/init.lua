local packages = {
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

  require("plugins.colorschemes"),
  require("plugins.direnv")
}

require("lazy").setup(packages)
