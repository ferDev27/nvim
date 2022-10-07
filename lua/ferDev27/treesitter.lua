local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
    ensure_installed = {"lua", "python", "bash", "javascript", "typescript", "html", "pug", "css", "json", "http", "php", "rust", "c", "c_sharp"},
    highlight = {enable = true, disable = { "css" } },
    autotag = {enable = true},
    autopairs = {enable = true},
    indent = { enable = true, disable = { "python", "css" } },
    rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
}
