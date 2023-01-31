local ok, db = pcall(require, 'dashboard')
if not ok then
	return
end

db.setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { 
          desc = '  Packer update', 
          group = '@property', 
          action = 'PackerSync', 
          key = 'u'
        },
        {
          desc = '  Find files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = '  File browser',
          group = 'DiagnosticHint',
          action = 'Telescope file_browser',
          key = 'b',
        },
        {
          desc = '  Configuration',
          group = 'Number',
          action = 'e ~/.config/nvim/init.lua',
          key = 'c',
        },
      },
    },
})
