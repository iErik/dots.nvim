local highlight = vim.cmd.highlight
local autocmd   = vim.api.nvim_create_autocmd

--vim.opt.termguicolors = true
--vim.cmd("colorscheme sunset_cloud")
--vim.cmd("colorscheme darkrose")
--vim.cmd("colorscheme crimson_moonlight")
vim.cmd("colorscheme evergarden")
--vim.cmd("colorscheme flesh-and-blood")
--vim.cmd("colorscheme shado")
--vim.cmd("colorscheme pinkish_day")
--vim.cmd("colorscheme radium")
--vim.cmd("colorscheme radioactive_waste")
--vim.cmd("colorscheme nightcity")
--vim.cmd("colorscheme mellifluous")

highlight({ "Comment",   "cterm=italic", "gui=italic" })
highlight({ "Normal",    "ctermbg=NONE", "guibg=NONE" })
highlight({ "NormalNC",  "ctermbg=NONE", "guibg=NONE" })
highlight({ "NonText",   "ctermbg=NONE", "ctermfg=NONE" })
highlight({ "Visual",    "ctermbg=NONE", "cterm=NONE" })
highlight({ "LineNr",    "ctermbg=NONE", "guibg=NONE" })
highlight({ "VertSplit", "ctermbg=NONE", "ctermfg=NONE" })
highlight({ "SignColumn", "ctermbg=NONE", "guibg=NONE" })


autocmd({
  "VimEnter",
  "OptionSet",
  "ColorScheme",
  "ColorSchemePre"
}, {
  callback = function ()
    local noBg = { "ctermbg=NONE", "guibg=NONE" }

    highlight({ "Comment", "cterm=italic", "gui=italic" })
    highlight({ "SignColumn", unpack(noBg) })
    highlight({ "Normal",   unpack(noBg) })
    highlight({ "NormalNC", unpack(noBg) })

    highlight({ "EndOfBuffer", unpack(noBg) })
    highlight({ "LineNr",      unpack(noBg) })
    highlight({ "VertSplit",   unpack(noBg) })

    highlight({ "Visual", "ctermbg=NONE", "cterm=NONE" })
    highlight({ "NonText", "ctermbg=NONE", "ctermfg=NONE" })
  end
})
