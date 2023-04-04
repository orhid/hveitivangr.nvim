local M = {}

function M.load(theme)
  if vim.g.colors_name then
    vim.cmd 'highlight clear'
    vim.cmd 'syntax reset'
  end
  vim.o.termguicolors = true
  for _, v in pairs(theme) do
    for name, attrs in pairs(v) do
      if type(attrs) == 'table' then
        vim.api.nvim_set_hl(0, name, attrs)
      elseif type(attrs) == 'string' then
        vim.api.nvim_set_hl(0, name, { link = attrs })
      end
    end
  end
end

return M
