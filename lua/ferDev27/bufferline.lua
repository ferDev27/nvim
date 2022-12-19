local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon', --| 'underline' | 'none',
        },
        buffer_close_icon = '',
        modified_icon = '●',
        --close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,
        diagnostics = false, -- "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer", --| function ,
                text_align = "left", --| "center" | "right"
                separator = false,
            }
        },
        color_icons = true, --| false, -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, --| false, -- disable filetype icons for buffers
        show_buffer_close_icons = true, --| false,
        show_buffer_default_icon = true, --| false, -- whether or not an unrecognised filetype should show a default icon
        show_close_icon = false, --| false,
        show_tab_indicators = true, --| false,
        show_duplicate_prefix = true, --| false, -- whether to show duplicate buffer prefix
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "thin", --| "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false, --| true,
        always_show_bufferline = true, --| false,
        sort_by = 'insert_at_end', --'insert_after_current' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
    },
    highlights = {
        fill = {
          fg = { attribute = "fg", highlight = "#ff0000" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        background = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },

        buffer_visible = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        buffer_selected = {
            italic = false,
        },

        close_button = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        close_button_visible = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },

        tab_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
          italic = false,
        },
        tab = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        tab_close = {
          fg = { attribute = "fg", highlight = "TabLineSel" },
          bg = { attribute = "bg", highlight = "Normal" },
        },

        duplicate_selected = {
          fg = { attribute = "fg", highlight = "TabLineSel" },
          bg = { attribute = "bg", highlight = "TabLineSel" },
          italic = true,
        },
        duplicate_visible = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
          italic = true,
        },
        duplicate = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
          italic = true,
        },

        modified = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        modified_selected = {
          fg = { attribute = "fg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        modified_visible = {
          fg = { attribute = "fg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },

        separator = {
          fg = { attribute = "bg", highlight = "TabLine" },
          bg = { attribute = "bg", highlight = "TabLine" },
        },
        separator_selected = {
          fg = { attribute = "bg", highlight = "Normal" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
        indicator_selected = {
          fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
          bg = { attribute = "bg", highlight = "Normal" },
        },
    },
}
