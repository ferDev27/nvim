local status_ok, theme = pcall(require, "tokyonight")
if not status_ok then
  return
end

theme.setup({
  style = "storm", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    comments = "NONE",
    keywords = "NONE",
    functions = "NONE",
    variables = "NONE",
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "vista_kind", "terminal"}, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  floats = { "packer" },
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  on_colors = function(colors)
    colors.bg_visual = "#373e5c"
  end
})

-- set colorscheme
vim.cmd('colorscheme tokyonight')
