require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua", "python", "bash", "javascript", "typescript", "html", "pug", "css", "json", "http", "php", "rust", "c"},
    highlight = {enable = true, additional_vim_regex_highlighting = false},
    autotag = {enable = true},
    autopairs = {enable = true},
}
