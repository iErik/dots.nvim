local highlight = vim.cmd.highlight
local autocmd   = vim.api.nvim_create_autocmd

vim.opt.termguicolors = true
--vim.cmd("colorscheme kanagawa")
--vim.cmd("colorscheme xoria")
--vim.cmd("colorscheme lackluster-mint")
--vim.cmd("colorscheme evergarden")
--vim.cmd("colorscheme embark")
--vim.cmd("colorscheme catppuccin-frappe")
--vim.cmd("colorscheme nightfly")
vim.cmd("colorscheme tokyonight-moon")

highlight({ "Comment",   "cterm=italic", "gui=italic" })
highlight({ "Normal",    "ctermbg=NONE" })
highlight({ "NonText",   "ctermbg=NONE", "ctermfg=NONE" })
highlight({ "Visual",    "ctermbg=NONE", "cterm=NONE" })
highlight({ "LineNr",    "ctermbg=NONE" })
--highlight({ "VertSplit", "ctermbg=NONE", "ctermfg=NONE" })


autocmd({ "vimenter", "ColorScheme", "ColorSchemePre" }, {
  pattern = "*",
  callback = function ()
    local noBg = { "ctermbg=NONE", "guibg=NONE" }

    highlight({ "SignColumn",   unpack(noBg) })
    highlight({ "Normal",       unpack(noBg) })
    highlight({ "EndOfBuffer",  unpack(noBg) })
    highlight({ "LineNr",       unpack(noBg) })
    highlight({ "CocErrorSign", unpack(noBg) })

--    highlight({ "VertSplit",
--      "ctermbg=NONE",
--      "ctermfg=NONE",
--      "guibg=NONE"
--    })

  end
})

--[[
if vim.env.TERM == 'xterm-256color' then
  vim.opt.t_Co = 256
end
--]]
