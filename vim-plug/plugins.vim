" auto-install vim-plug
let plugpath = configpath .. pathdelim .. 'autoload' .. pathdelim
if has("win64") || has("win32") || has("win16")
"  iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim | ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
else

  if empty(glob(plugpath .. 'plug.vim'))
    execute 'silent !curl -fLo ' .. plugpath .. 'plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    "autocmd VimEnter * PlugInstall
    "autocmd VimEnter * PlugInstall | source $MYVIMRC
  endif
endif

call plug#begin(plugpath .. 'plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " APL syntax colouring
    Plug 'https://gitlab.com/aaa66/vim-apl.git' " git@gitlab.com:aaa66/vim-apl.git' https://gitlab.com/n9n/vim-apl'

    "Colour Schemes
    Plug 'lifepillar/vim-solarized8'
    Plug 'NLKNguyen/papercolor-theme'    
call plug#end()
