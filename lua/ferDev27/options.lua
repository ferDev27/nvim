-- Options
vim.cmd('filetype plugin indent on')

vim.opt.termguicolors = true
vim.opt.laststatus=2
vim.opt.showtabline=2 

vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.pumheight = 5
vim.o.fileencoding = 'utf-8'
vim.o.cmdheight = 1
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.conceallevel = 0
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 200
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 12
vim.o.sidescrolloff = 5
vim.o.mouse = "a"
vim.o.cursorline = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.expandtab = true

vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.autoindent = true
vim.bo.expandtab = true

vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.colorcolumn = "81"
