local ok, staline = pcall(require, "staline")
if not ok then
	return
end

local ok, stabline = pcall(require, "stabline")
if not ok then
	return
end

--Status line
staline.setup {
	sections = {
		left = { '  ', 'mode', ' ', 'branch', ' ', 'lsp' },
		mid = {},
		right = {'cool_symbol', 'file_name', 'line_column' }
	},
	mode_colors = {
		i = "#9ece6a",
		ic = "#9ece6a",
		s = "#9ece6a",
		S = "#9ece6a",
		n = "#7aa2f7",
		c = "#e059ac",
		v = "#bb9af7",
		V = "#bb9af7",
		t = "#c0caf5",
	},
	defaults = {
		true_colors = true,
		line_column = " [%l/%L] :%c  ",
        branch_symbol = " ",
        cool_symbol = " ",       -- Arch
	},
    lsp_symbols = { 
        Error="  ", 
        Info="  ", 
        Warn="  ", 
        Hint=" " 
    },
}

-- Buffers
stabline.setup {
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

--Staline Mac
--staline.setup {
--    defaults = {
--        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
--        --left_separator  = "",
--        --right_separator = "",
--        left_separator  = "",
--        right_separator = "",
--        full_path       = false,
--        line_column     = "[%l/%L] :%c 並%p%% ", -- `:h stl` to see all flags.
--
--        fg              = "#000000",  -- Foreground text color.
--        bg              = "none",     -- Default background is transparent.
--        inactive_color  = "#323752",
--        inactive_bgcolor = "none",
--        true_colors     = true,      -- true lsp colors.
--        font_active     = "none",     -- "bold", "italic", "bold,italic", etc
--
--        mod_symbol      = "  ",
--        lsp_client_symbol = " ",
--        branch_symbol   = " ",
--        cool_symbol     = " ",       -- Mac
--        --cool_symbol     = " ",       -- Arch
--        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
--    },
-- 	mode_colors = {
-- 		i = "#9ece6a",
-- 		ic = "#9ece6a",
-- 		s = "#9ece6a",
-- 		S = "#9ece6a",
-- 		n = "#7aa2f7",
-- 		c = "#e059ac",
-- 		v = "#bb9af7",
-- 		V = "#bb9af7",
--        t = "#c0caf5",
-- 	},
--    mode_icons = {
-- 		i = "INSERT",
-- 		ic = "INSERT",
-- 		s = "INSERT",
-- 		S = "INSERT",
-- 		n = "NORMAL",
-- 		c = "COMMAND",
-- 		v = "VISUAL",
-- 		V = "V-LINE",
--        t = "TERMINAL",
--        R = "REPLACE"
--    },
--    sections = {
--        left = { 'right_sep_double', '-mode', 'left_sep_double', ' ', 'branch', ' ', 'lsp' },
--        mid  = { 'file_name' },
--        right = { 'cool_symbol','right_sep_double', '-line_column', 'left_sep_double' },
--    },
--    special_table = {
--        NvimTree = { 'NvimTree', ' ' },
--        packer = { 'Packer',' ' },        -- etc
--    },
--    lsp_symbols = {
--        Error=" ",
--        Info=" ",
--        Warn=" ",
--        Hint=" ",
--    },
--}
