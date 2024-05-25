-- NVim Treesitter is used to provide better integration
-- between NeoVim and Treesitter, also providing better
-- support and cool features for specific languages such
-- as better syntax highlighting and etc.

return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  }
}
