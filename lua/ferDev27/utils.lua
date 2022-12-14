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

-- Autocommand that executes python, javascript and sh files
vim.cmd [[
    augroup quick_run
        autocmd!
        autocmd Filetype python nnoremap <buffer> <leader>r :w<CR>:!python %<CR>
        autocmd Filetype javascript,typescript nnoremap <buffer> <leader>r :w<CR>:!node %<CR>
        autocmd Filetype bash,sh nnoremap <buffer> <leader>r :w<CR>:!bash %<CR>
    augroup end
]]
