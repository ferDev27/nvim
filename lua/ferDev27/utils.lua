-- Cursor config
--vim.cmd[[
--set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
--  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
--  \,sm:block-blinkwait175-blinkoff150-blinkon175
--]]

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Terminal
vim.cmd([[
    augroup neovim_terminal
        autocmd!
        " Enter Terminal-mode (insert) automatically
        autocmd TermOpen * startinsert
        " Disables number lines on terminal buffers
        autocmd TermOpen * :set nonumber norelativenumber
    augroup END
]])


-- vim.cmd([[
-- 		:set guicursor=n-v-c:hor30,i-ci-ve:ver30,r-cr:hor20,o:hor50
-- 		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
-- 		  \,sm:block-blinkwait175-blinkoff150-blinkon175
-- ]])
