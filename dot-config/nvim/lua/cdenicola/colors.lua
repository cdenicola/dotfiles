local ok = pcall(vim.cmd.colorscheme, "unokai")
if not ok then
  vim.notify("colorscheme 'unokai' not found. Falling back to default.", vim.log.levels.WARN)
  pcall(vim.cmd.colorscheme, "default")
end
