local packages = {
  require("plugins.lsp"),
  require("plugins.telescope"),
  require("plugins.treesitter"),
  require("plugins.web-devicons"),

  require("plugins.bufferline"),
  require("plugins.lualine"),
  --require("plugins.tabby"),

  --require("plugins.chadtree"),
  require("plugins.neotree"),

  require("plugins.dashboard"),
  require("plugins.activate"),

  require("plugins.fzf"),
  require("plugins.autopair"),
  require("plugins.indent-blankline"),
  require("plugins.neomux"),

  require("plugins.colorschemes")
}

require("lazy").setup(packages)
