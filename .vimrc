set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
syntax on
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
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2

map <C-n> :NERDTreeToggle<CR>

