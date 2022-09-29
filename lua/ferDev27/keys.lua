-- Set leader
vim.g.mapleader = ','

local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = false }
local term_opt = { silent = true }

-- Better window navigation
map('n', '<C-h>', '<C-w>h', options )
map('n', '<C-l>', '<C-w>l', options )
map('n', '<C-j>', '<C-w>j', options )
map('n', '<C-k>', '<C-w>k', options )

-- Better tabbing
map('v', '<', '<gv', options)
map('v', '>', '>gv', options)

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
map('x', 'K', ":move '<-2<CR>gv-gv", options )
map('x', 'J', ":move '>+1<CR>gv-gv", options )

-- Navigate buffers
map('n', '<TAB>', ':bnext<CR>', options )
map('n', '<S-TAB>', ':bprevious<CR>', options )

-- Close current buffer
map('n', '<C-b>', ':bd!<CR>', options)

-- Terminal
-- Better terminal navigation
map("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opt )
map("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opt )
map("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opt )
--map("t", "<C-right>", "<C-\\><C-N><C-w>l", term_opt )
