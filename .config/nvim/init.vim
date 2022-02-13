"                       _           
" _ __   ___  _____   _(_)_ __ ___  
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \ 
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|
" 
" hyperextensible Vim-based text editor

                                   

" Load Vim Config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-fugitive'


" Initialize plugin system
call plug#end()


" Commands
command! -nargs=0 Prettier :CocCommand prettier.formatFile



" Plugin Settings
" Git Gutter
highlight GitGutterAdd    guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
let g:gitgutter_enabled= 1
let g:gitgutter_map_keys= 0
let g:gitgutter_highlight_linenrs = 1
set updatetime=100
