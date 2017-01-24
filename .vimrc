set ts=2
set backup
set backupdir=$HOME/.vim
set directory=$HOME/.vim "recovery
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932
colorscheme black
syntax on
" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" Don't save options.
set viewoptions-=options
set foldlevel=100
