local ok, staline = pcall(require, "staline")
if not ok then
	return
end

local ok, stabline = pcall(require, "stabline")
if not ok then
	return
end

require('staline').setup {
    defaults = {
        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
        left_separator  = "",
        right_separator = "",
        full_path       = false,
        line_column     = "[%l/%L] :%c 並%p%% ", -- `:h stl` to see all flags.

        fg              = "#000000",  -- Foreground text color.
        bg              = "none",     -- Default background is transparent.
        inactive_color  = "#364a82",
        inactive_bgcolor = "none",
        true_colors     = false,      -- true lsp colors.
        font_active     = "none",     -- "bold", "italic", "bold,italic", etc

        mod_symbol      = "  ",
        lsp_client_symbol = " ",
        branch_symbol   = " ",
        cool_symbol     = " ",       -- Change this to override default OS icon.
        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
    },
    mode_colors = {
        n = "#2bbb4f",
        i = "#986fec",
        c = "#e0af68",
        v = "#4799eb",   -- etc..
    },
    mode_icons = {
        n = " ",
        i = " ",
        c = " ",
        v = " ",   -- etc..
    },
    sections = {
        left = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
        mid  = { 'file_name' },
        right = { 'cool_symbol','right_sep_double', '-line_column' },
    },
    special_table = {
        NvimTree = { 'NvimTree', ' ' },
        packer = { 'Packer',' ' },        -- etc
    },
    lsp_symbols = {
        Error=" ",
        Info=" ",
        Warn=" ",
        Hint="",
    },
}

-- Bufferline
require('stabline').setup {
	style = "slant",
    inactive_fg = "#364a82",
	-- bg = "#986fec",
	-- fg = "#c0caf5",
	stab_right = "",
}
