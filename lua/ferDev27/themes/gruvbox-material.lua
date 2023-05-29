vim.cmd[[
  if has('termguicolors')
    set termguicolors
  endif

  " For dark version.
  set background=dark

  " Set contrast.
  " This configuration option should be placed before `colorscheme gruvbox-material`.
  " Available values: 'hard', 'medium'(default), 'soft'
  let g:gruvbox_material_background = 'hard'

  " Transparent
  " let g:gruvbox_material_transparent_background = 1

  " Dont show end of file
  let g:gruvbox_material_show_eob = 0

  " For better performance
  let g:gruvbox_material_better_performance = 1

  colorscheme gruvbox-material
]]
