vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>sr", ":%s/<C-r><C-w>//g<Left><Left>")
map("n", "<leader>pv", vim.cmd.Ex)

-- map('n', '<c-k>', ':wincmd k<CR>')
-- map('n', '<c-j>', ':wincmd j<CR>')
-- map('n', '<c-h>', ':wincmd h<CR>')
-- map('n', '<c-l>', ':wincmd l<CR>')

map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
