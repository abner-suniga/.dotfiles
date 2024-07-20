local function toggle_netrw()
  if vim.api.nvim_get_option_value("filetype", {}) == "netrw" then
    vim.cmd('Rex')
  else
    vim.cmd('Ex')
  end
end

return {
  toggle_netrw = toggle_netrw
}
