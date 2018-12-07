set ts=2
set backup
set backupdir=$HOME/.vim
set directory=$HOME/.vim "recovery
set encoding=utf-8
set fileencodings=utf-8,euc-jp,cp932
"colorscheme black
syntax on
" Save fold settings.
autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" Don't save options.
set viewoptions-=options
set foldlevel=100

" statusline
" statuslineを常に表示
set laststatus=2
"大体こんな感じで表示
" hoge.c [+][utf-8:LF][c]                     0,0-1 全て
" help.jax [ヘルプ][-][RO][utf-8:LF][help]       1,1 先頭
let ff_table = {'dos' : 'CR+LF', 'unix' : 'LF', 'mac' : 'CR' }
let &statusline='%<%f %h%m%r%w[%{(&fenc!=""?&fenc:&enc)}:%{ff_table[&ff]}]%y%= %-14.(%l,%c%V%) %P'
