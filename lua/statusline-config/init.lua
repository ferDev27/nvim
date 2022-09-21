local ok, staline = pcall(require, "staline")
if not ok then
	return
end

local ok, stabline = pcall(require, "stabline")
if not ok then
	return
end

-- Status line
require "staline".setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		mid = {},
		right = {'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#9ece6a",
		ic = "#9ece6a",
		s = "#9ece6a",
		S = "#9ece6a",
		n = "#7aa2f7",
		c = "#e0af68",
		v = "#bb9af7",
		V = "#bb9af7",
	},
	defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
		--branch_symbol = " "
        branch_symbol = " "
	},
    lsp_symbols = { 
        Error="  ", 
        Info="  ", 
        Warn="  ", 
        Hint=" " 
    },
}

-- Buffers
require('stabline').setup {
	style       = "bar", -- others: arrow, slant, bubble
	stab_left   = "┃",
	stab_right  = " ",

    inactive_fg = "#364a82",
 	bg = "#2f354d",
	--inactive_bg = "#1e2127",
	--inactive_fg = "#aaaaaa",
	-- stab_bg     = Default is darker version of bg.,

	font_active = "bold",
	exclude_fts = { 'NvimTree', 'dashboard', 'lir' },
	stab_start  = "",   -- The starting of stabline
	stab_end    = "",
}
