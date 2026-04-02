-- Nix-specific highlight overrides via a dedicated namespace.
-- nvim_win_set_hl_ns makes the window check this namespace first,
-- so these override the global evergarden groups only in nix buffers.

local ns = vim.api.nvim_create_namespace('nix-highlights')

local overrides = {
  -- Function parameters `{ x, y }:` — stand out from plain variables
  ['@variable.parameter'] = { fg = '#D2BDF3' },          -- purple
  -- Attribute set keys `{ foo = ...; }` — warmer than plain text
  ['@variable.member']    = { fg = '#F5D098' },          -- yellow
  -- if/then/else — distinct from let/with/rec/inherit
  ['@keyword.conditional'] = { fg = '#F7A182' },         -- orange
  -- String interpolation ${ } — make it pop
  ['@punctuation.special'] = { fg = '#F5D098', bold = true }, -- yellow bold
  -- import — cherry + bold
  ['@keyword.import']     = { fg = '#FAE6EF', bold = true },  -- cherry bold
  -- abort/throw — red to signal danger
  ['@keyword.exception']  = { fg = '#F57F82', bold = true },  -- red bold
  -- Bound function names `foo = x: ...`
  ['@function']           = { fg = '#B3E6DB', bold = true },  -- skye bold
  -- Comments — clearly dimmer than regular text, with a cool tint
  ['@comment']            = { fg = '#58686D', italic = true }, -- overlay0 (dark muted teal)
  ['Comment']             = { fg = '#58686D', italic = true }, -- legacy fallback
}

for group, val in pairs(overrides) do
  vim.api.nvim_set_hl(ns, group, val)
end

-- Apply the namespace to the current window (and any new windows for this buf)
local function apply(win)
  vim.api.nvim_win_set_hl_ns(win or 0, ns)
end

apply()

vim.api.nvim_create_autocmd('BufWinEnter', {
  buffer = 0,
  callback = function(ev)
    for _, win in ipairs(vim.fn.win_findbuf(ev.buf)) do
      apply(win)
    end
  end,
})
