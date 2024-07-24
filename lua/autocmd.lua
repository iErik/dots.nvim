local autocmd   = vim.api.nvim_create_autocmd

-- Trim trailing whitespace
autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]]
})

-- Tidy split panels on window resize
autocmd({ "VimResized" }, {
  pattern = { "*" },
  command = "wincmd = "
})
