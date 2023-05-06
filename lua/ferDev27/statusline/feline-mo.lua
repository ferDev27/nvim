local ok, feline = pcall(require, "feline")
if not ok then
	return
end

local vi_mode_utils = require("feline.providers.vi_mode")

local theme = {
	aqua = "#7AB0DF",
	bg = "#131621",
	blue = "#93bbff",
	cyan = "#98e4ff",
	darkred = "#FB7373",
	fg = "#C7C7CA",
	gray = "#191c2b",
	green = "#cdea9f",
	lime = "#54CED6",
	orange = "#fb9f7f",
	pink = "#D997C8",
	purple = "#d3a7ee",
	red = "#F07178",
	yellow = "#ffd47e",
}

local mode_theme = {
	["NORMAL"] = theme.green,
	["OP"] = theme.cyan,
	["INSERT"] = theme.aqua,
	["VISUAL"] = theme.yellow,
	["LINES"] = theme.darkred,
	["BLOCK"] = theme.orange,
	["REPLACE"] = theme.purple,
	["V-REPLACE"] = theme.pink,
	["ENTER"] = theme.pink,
	["MORE"] = theme.pink,
	["SELECT"] = theme.darkred,
	["SHELL"] = theme.cyan,
	["TERM"] = theme.lime,
	["NONE"] = theme.gray,
	["COMMAND"] = theme.blue,
}

local function vimode_hl()
	return {
		name = vi_mode_utils.get_mode_highlight_name(),
		fg = vi_mode_utils.get_mode_color(),
	}
end

local component = {}

component.vim_mode = {
	provider = function()
		return vim.api.nvim_get_mode().mode:upper()
	end,
	hl = function()
		return {
			bg = "gray",
			fg = require("feline.providers.vi_mode").get_mode_color(),
			style = "bold",
			name = "NeovimModeHLColor",
		}
	end,
	left_sep = "block",
	right_sep = "block",
}

component.vi_mode = {
	left = {
		provider = "▊",
		hl = vimode_hl,
	},
}

component.git_branch = {
	provider = "git_branch",
	hl = {
		fg = "fg",
		bg = "gray",
	},
	left_sep = "block",
	right_sep = "block",
}

component.git_add = {
	provider = "git_diff_added",
	hl = {
		fg = "green",
		bg = "gray",
	},
	right_sep = "block",
}

component.git_delete = {
	provider = "git_diff_removed",
	hl = {
		fg = "red",
		bg = "gray",
	},
	right_sep = "block",
}

component.git_change = {
	provider = "git_diff_changed",
	hl = {
		fg = "purple",
		bg = "gray",
	},
	right_sep = "block",
}

component.separator = {
	provider = " ",
	hl = {
		fg = "bg",
		bg = "bg",
	},
}

component.diagnostic_errors = {
	provider = "diagnostic_errors",
	hl = {
		fg = "red",
		bg = "gray",
	},
	right_sep = "block",
}

component.diagnostic_warnings = {
	provider = "diagnostic_warnings",
	hl = {
		fg = "yellow",
		bg = "gray",
	},
	right_sep = "block",
}

component.diagnostic_hints = {
	provider = "diagnostic_hints",
	hl = {
		fg = "aqua",
		bg = "gray",
	},
	right_sep = "block",
}

component.diagnostic_info = {
	provider = "diagnostic_info",
	right_sep = "block",
}

component.file_info = {
	provider = {
		name = "file_info",
		opts = {
			filetype_icon = true,
		},
	},
	hl = {
		fg = "fg",
		bg = "bg",
	},
}

component.position = {
	provider = "position",
	hl = {
		fg = "green",
		bg = "gray",
	},
	left_sep = "block",
	right_sep = "block",
}

component.line_percentage = {
	provider = "line_percentage",
	hl = {
		fg = "aqua",
		bg = "gray",
	},
	left_sep = "block",
	right_sep = "block",
}

component.scroll_bar = {
	provider = "scroll_bar",
	hl = {
		fg = "yellow",
		bg = "gray",
	},
}

local left = {
	component.vi_mode.left,
	component.vim_mode,
	component.git_branch,
	component.git_add,
	component.git_delete,
	component.git_change,
	component.separator,
}

local middle = {
	component.file_info,
}

local right = {
	component.diagnostic_errors,
	component.diagnostic_warnings,
	component.diagnostic_info,
	component.diagnostic_hints,
	component.position,
	component.line_percentage,
	component.scroll_bar,
}

local components = {
	active = {
		left,
		middle,
		right,
	},
}

feline.setup({
	components = components,
	theme = theme,
	vi_mode_colors = mode_theme,
})
