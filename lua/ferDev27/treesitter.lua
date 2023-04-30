local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = {
		"lua",
		"python",
		"bash",
		"javascript",
		"typescript",
		"html",
		"css",
		"json",
		"php",
		"rust",
		"c",
		"c_sharp",
		"vim",
		"haskell",
	},
	highlight = { enable = true, disable = { "css" } },
	autotag = { enable = true },
	autopairs = { enable = true },
	indent = { enable = true, disable = { "python", "css" } },
})
