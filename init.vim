if has("win64") || has("win32") || has("win16")
  let g:configpath = $LOCALAPPDATA .. '\nvim'
  let g:pathdelim = '\'
else
  let g:configpath = $HOME .. '/.config/nvim'
  let g:pathdelim = '/'
endif

execute 'source ' .. configpath .. pathdelim .. 'vim-plug' .. pathdelim .. 'plugins.vim'
execute 'source ' .. configpath .. pathdelim .. 'general' .. pathdelim .. 'settings.vim'






"if !exists("g:os")
"  if has("win64") || has("win32") || has("win16")
"    let g:os = "Windows"
"    source C:\Users\david\Appdata\local\nvim\vim-plug\plugins.vim
"    source C:\Users\david\Appdata\local\nvim\general\settings.vim
"  else
"    let g:os = substitute(system('uname'), '\n', '', '')
"    source $HOME/.config/nvim/vim-plug/plugins.vim
"    source $HOME/.config/nvim/vim-plug/settings.vim
"  endif
"endif
