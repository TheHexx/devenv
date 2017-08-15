"---- VUNDLE PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       "Plugin Manager
Plugin 'scrooloose/nerdtree'        "File navigator
Plugin 'vim-airline/vim-airline'    "Improved status bar
Plugin 'flazz/vim-colorschemes'     "Additional colour schemes
Plugin 'pangloss/vim-javascript'    "Better Syntax Hilighting for Javascript
Plugin 'scrooloose/syntastic'       "Linting Plugin
Plugin 'Raimondi/delimitMate'       "Auto closes paired delimeters
"Plugin 'Valloric/YouCompleteMe'     "Auto completion  - needs: cd ~/.vim/bundle/YouCompleteMe && ./install.py --tern-completer 
"Plugin 'marijnh/tern_for_vim'       "Auto completion for javascript - needs: cd ~/.vim/bundle/tern_for_vim && npm install 
call vundle#end()

"---- FILETYPES AND SYNTAX
set encoding=utf8
filetype plugin indent on
autocmd BufNewFile,BufRead *.md set filetype=markdown
syntax enable

"---- GLOBAL APPEARANCE
set t_Co=256            "Turn on 256 colours
set background=dark     "Tell vim the background is dark
colorscheme jellybeans  "Use the jellybeans colour scheme

"---- EDITING AREA APPEARANCE
set number              "Display line numbers in LHS margin
set showmatch           "highlight matching parentheses

"---- COMMAND LINE / STATUS BAR APPEARANCE
set wildmenu        "autocomplete on commands
set showcmd         "show partial commands"
set ruler           "Show cursor location in status bar
set cmdheight=2     "show 2 rows of commands
set laststatus=2    "Always display last status line

"---- NAVIGATION BEHAVIOUR
set backspace=indent,eol,start  "allow backspacing over indents, eol and starts
set autoindent                  "continue indent to next line
set nostartofline               "prevent some actions starting a new line
set so=7                        "scrolloff limits

"---- SEARCHING BEHAVIOUR
set incsearch       "search as characters are entered
set hlsearch        "highlight matches
set ignorecase      "ignore case...
set smartcase       "unless capitals used

"---- FOLDING BEHAVIOUR
set nofoldenable        "disable folding on file load
set foldlevelstart=10   "max unfold on start
set foldnestmax=10      "10 nested folds max
set foldmethod=indent   "base folds on indent level"

"---- TABBING BEHAVIOUR
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab

"---- PLUGIN SETUP: AIRLINE 
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1

"---- PLUGIN SETUP: NERDTREE
let NERDTreeAutoDeleteBuffer = 1        "Let nerd tree remove the buffer of the file you just closed
let NERDTreeQuitOnOpen = 0              "Close NERDTree when a file opens
let NERDTreeMinimalUI = 1               "Get rid of the ? for help message
let NERDTreeShowHidden=1                "Show hidden files in NERDTree by default
autocmd StdinReadPre * let s:std_in=1   "Read the filename supplied to vim on startup
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif "If no file supplied, start NERDTree on startup

"---- PLUGIN SETUP: SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint'] " Need to 'npm install -g jshint' for this to work !

"---- PLUGIN SETUP: YOU COMPLETE ME AND TERN

"---- KEY MAPPINGS
map <C-n> :NERDTreeToggle<CR>               "<CTRL-N> Opens/Closes NERDTree
nnoremap <C-l> :SyntasticToggleMode<CR>     "<CTRL-J> Turns linting on and off
nnoremap <space> za                         "<space> opens/closes folds

