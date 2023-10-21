local status_ok, theme = pcall(require, "material")
if not status_ok then
  return
end

local colors = require 'material.colors'

vim.g.material_style = "palenight"

theme.setup({
    contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = true },
        strings = {},
        keywords = { italic = true },
        functions = {},
        variables = {},
        operators = {},
        types = {},
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        "dashboard",
        "gitsigns",
        -- "hop",
        -- "indent-blankline",
        -- "lspsaga",
        -- "mini",
        -- "neogit",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        -- "sneak",
        "telescope",
        -- "trouble",
        "which-key",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_highlights = {
        CursorLine = { bg = "#282d38" },
    },

    custom_colors = function(colors)
        -- Main
        colors.main.cyan = "#74bad6"
        colors.main.yellow = "#cfab65"
        colors.main.green = "#9ece6a"
        colors.main.orange = "#cf765b"

        --Editor
        colors.editor.highlight    = "#31354a"
        colors.editor.accent = "#6E91DE"
        colors.editor.cursor = "#e0af68"
--        colors.editor.bg = "#181824"
--        colors.editor.bg_alt = "#181824"
--        colors.backgrounds.sidebars = "#111119" 
--        colors.backgrounds.floating_windows    = "#111119"
--        colors.backgrounds.non_current_windows = "#181824"
        colors.editor.selection = "#2f3542"
        colors.editor.title = "#C792EA"
        colors.syntax.comments     = "#3e4759"
        --colors.editor.line_numbers = "#35374d"
    end   
})

-- set colorscheme
vim.cmd 'colorscheme material'
vim.cmd 'highlight ColorColumn guibg=#1D2129'
