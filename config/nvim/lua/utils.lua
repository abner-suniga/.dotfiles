local function toggle_netrw()
  if vim.api.nvim_get_option_value("filetype", {}) == "netrw" then
    vim.cmd('Rex')
  else
    vim.cmd('Ex')
  end
end

local function toggle_quickfix()
  local qf_exists = false
  for _, win in pairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      qf_exists = true
    end
  end

  if qf_exists then
    vim.cmd('cclose')
  else
    vim.cmd('copen')
  end
end

return {
  toggle_netrw = toggle_netrw,
  toggle_quickfix = toggle_quickfix
}
