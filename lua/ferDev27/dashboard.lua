local ok, db = pcall(require, 'dashboard')
if not ok then
	return
end

db.default_banner = {
[[                            Welcome to ferDevs27's                                 ]],
[[                                                                                   ]],  
[[      ___           ___           ___                                    ___       ]],     
[[     /__/\         /  /\         /  /\          ___        ___          /__/\      ]],      
[[     \  \:\       /  /:/_       /  /::\        /__/\      /  /\        |  |::\     ]],      
[[      \  \:\     /  /:/ /\     /  /:/\:\       \  \:\    /  /:/        |  |:|:\    ]],        
[[  _____\__\:\   /  /:/ /:/_   /  /:/  \:\       \  \:\  /__/::\      __|__|:|\:\   ]],        
[[ /__/::::::::\ /__/:/ /:/ /\ /__/:/ \__\:\  ___  \__\:\ \__\/\:\__  /__/::::| \:\  ]],        
[[ \  \:\~~\~~\/ \  \:\/:/ /:/ \  \:\ /  /:/ /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/  ]],        
[[  \  \:\  ~~~   \  \::/ /:/   \  \:\  /:/  \  \:\|  |:|     \__\::/  \  \:\        ]],      
[[   \  \:\        \  \:\/:/     \  \:\/:/    \  \:\__|:|     /__/:/    \  \:\       ]],    
[[    \  \:\        \  \::/       \  \::/      \_ \::::/      \__\/      \  \:\      ]],    
[[     \__\/         \__\/         \__\/         \_\__/                   \__\/      ]],   
[[                                                                                   ]], 
[[                                                                                   ]], 
}

db.preview_file_height = 11
db.preview_file_width = 70
db.custom_center = {
    {icon = '  ',
    desc = 'Find recent files                       ',
    action = 'Telescope oldfiles',
    shortcut = '<leader> f r'},
    {icon = '  ',
    desc = 'Find files                              ',
    action = 'Telescope find_files',
    shortcut = '<leader> f f'},
    {icon = '  ',
    desc ='File browser                            ',
    action =  'Telescope file_browser',
    shortcut = '<leader> f b'},
    {icon = '  ',
    desc = 'Find word                               ',
    action = 'Telescope live_grep',
    shortcut = '<leader> f g'},
    {icon = '  ',
    desc = 'Configuration                           ',
    action = 'e ~/.config/nvim/init.lua',
    shortcut = '<leader> E  '},
    {icon = '﯇  ',
    desc = 'Close neovim                            ',
    action = 'qa',
    shortcut = '<leader> q  '},
  }

