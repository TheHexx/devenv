set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'raimondi/delimitmate'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
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
set laststatus=2
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

map <C-n> :NERDTreeToggle<CR>
