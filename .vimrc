set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'raimondi/delimitmate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on
syntax on

let g:airline_powerline_fonts = 1
let g:airline_theme = badwolf
set number
set so=7
set ruler
set cmdheight=2
set background=dark
set encoding=utf8
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set lbr
set t_Co=256
set tw=500
set laststatus=2


