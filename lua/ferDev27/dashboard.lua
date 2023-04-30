local ok, alpha = pcall(require, "alpha")
if not ok then
	return
end

local ok, dashboard = pcall(require, "alpha.themes.dashboard")
if not ok then
	return
end

-- Set header
dashboard.section.header.val = {
	[[                                                                            ]],
	[[                                                                            ]],
	[[                                                                            ]],
	[[                          ~ ferDev27.neovim(); ~                            ]],
	[[                                                                            ]],
	[[                                            __                              ]],
	[[               ___     ___    ___   __  __ /\_\    ___ ___                  ]],
	[[              / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\                ]],
	[[             /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \               ]],
	[[             \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\              ]],
	[[              \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/              ]],
	[[                                                                            ]],
	[[                                                                            ]],
	[[                                                                            ]],
	[[                                                                            ]],
	[[                                                                            ]],
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
	dashboard.button("e", "  New File    ", ":enew<CR>"),
	dashboard.button("f", "  Find File   ", ":Telescope find_files<CR>"),
	dashboard.button("t", "  Find Word   ", ":Telescope live_grep<CR>"),
	dashboard.button("b", "  File Browser", ":Telescope file_browser<CR>"),
	dashboard.button("c", "  NVIM Config ", ":e ~/.config/nvim<CR>"),
	dashboard.button("q", "﯇  Quit        ", ":qa<CR>"),
}

-- Set footer
dashboard.section.footer.val = "I use Arch btw"

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
