local ok = pcall(vim.cmd.colorscheme, "catppuccin-nvim")
if not ok then
  vim.notify("colorscheme 'catppuccin-nvim' not found. Falling back to unokai.", vim.log.levels.WARN)
  pcall(vim.cmd.colorscheme, "unokai")
end
