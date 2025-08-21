print("Starting cdenicola's nvim config")
require("config.lazy")

vim.opt.ignorecase = true -- search case insensitive
vim.opt.smartcase = true  -- search case sensitive IF capital letter
vim.opt.inccommand = "split" -- for incsearch while sub

vim.opt.relativenumber = true
vim.opt.number = true

vim.g.mapleader = " "
local keyset = vim.keymap.set
keyset("n", "<leader>sr", ":%s/<C-r><C-w>//g<Left><Left>") -- search replace shortcut
keyset("n", "<leader>pv", vim.cmd.Ex)
