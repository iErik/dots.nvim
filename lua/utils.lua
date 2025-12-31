local utils = {}

utils.merge = function (...)
  local tables = {...}
  local merged = {}

  for i = 1, select('#', ...) do
    if type(tables[i]) ~= 'table' then goto continue end

    for _, _ in pairs(tables[i]) do
      table.insert(merged, tables[i])
    end

    ::continue::
  end

  return merged
end

-- split("a,b,c", ",") => {"a", "b", "c"}
utils.split = function (s, sep)
  local fields = {}

  local pattern = sep and
    string.format("([^%s]+)", sep) or '.'

  string.gsub(s, pattern, function (c)
    table.insert(fields, c)
  end)

  return fields
end

utils.keymap = function (modes, key, command, options)
  vim.keymap.set(
    utils.split(modes),
    key, command,
    options
  )
end

utils.map = function (key, command, options)
  vim.keymap.set(
    { 'n', 'v', 's', 'o' },
    key, command,
    options
  )
end

utils.nmap = function (key, command, options)
  vim.keymap.set(
    { 'n' },
    key, command,
    options
  )
end

utils.vmap = function (key, command, options)
  vim.keymap.set(
    { 'v' },
    key, command,
    options
  )
end

utils.imap = function (key, command, options)
  vim.keymap.set(
    { 'i' },
    key, command,
    options
  )
end

utils.cmap = function (key, command, options)
  vim.keymap.set(
    { 'c' },
    key, command,
    options
  )
end

return utils
