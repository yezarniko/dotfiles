"       _           
"__   _(_)_ __ ___  
"\ \ / / | '_ ` _ \ 
" \ V /| | | | | | |
"  \_/ |_|_| |_| |_|
"
"the ubiquitous text editor


                   
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" LightLine
Plugin 'itchyny/lightline.vim'

" Vifm
Plugin 'vifm/vifm.vim'

" Nerd Tree
Plugin 'scrooloose/nerdtree'

" SuperTab
Plugin 'ervandew/supertab'

" Themes
Plugin 'tomasr/molokai'
Plugin 'tomasiser/vim-code-dark'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'dracula/vim', { 'name': 'dracula' }

" Syntax
Plugin 'cespare/vim-toml'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required



" Config Start Here



" Default Vim Configuration
if v:progname =~? "evim"
  finish
endif


if !has('nvim')
  " Get the defaults that most users want.
  source $VIMRUNTIME/defaults.vim
  " Mouse Fix for Alacritty
  set ttymouse=sgr
endif


if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set nohlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif




" My Configurations

" lightbar Configuration
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" molokai Configuration
let g:molokai_original = 1

" Mouse
set mouse=a

" Relative Number
set number relativenumber

" Clip Board
set clipboard=unnamed

" System Clipboard
noremap <c-c> "+y :let @+=@*<CR>
map <c-p> "+p

" Moving Around Windows
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" Folding
" set foldmethod=indent

" Theme
colorscheme codedark
