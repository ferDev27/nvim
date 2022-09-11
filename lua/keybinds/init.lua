vim.g.mapleader = ','
local map = vim.api.nvim_set_keymap

-- Better window navigation
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- Better tabbing
map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
map('x', 'K', ":move '<-2<CR>gv-gv", {noremap = true, silent=false})
map('x', 'J', ":move '>+1<CR>gv-gv", {noremap = true, silent=false})

-- Navigate buffers
map('n', '<TAB>', ':bnext<CR>', {noremap = true, silent=false})
map('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent=false})
-- Close current buffer
map('n', '<C-b>', ':bd!<CR>', {noremap = true, silent=false})

-- Exit insert mode
map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

-- Terminal --
-- Better terminal navigation
-- map("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true })
-- map("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true })
-- map("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true })
-- map("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true })
