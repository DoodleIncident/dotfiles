""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:solarized_termcolors=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sensible settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
filetype indent plugin on
set t_Co=256

set number
set confirm

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

set tabstop=8 "to make hard tabs more obvious
set expandtab
set softtabstop=4
set shiftwidth=4

set background=dark
colorscheme solarized

set hlsearch
set ignorecase
set smartcase

set splitright

set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eccentric keybinds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "-"

inoremap jk <esc>

nnoremap j gj
nnoremap k gk

nnoremap L $
nnoremap H 0

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap // :nohlsearch<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype-specific stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_php
    autocmd!
    autocmd BufNewFile,BufRead *.php set noexpandtab
    autocmd BufNewFile,BufRead *.php set tabstop=4
    autocmd BufNewFile,BufRead *.php set softtabstop=0
augroup END

augroup filetype_atlas " LC2K Assembly
    autocmd!
    autocmd BufNewFile,BufRead *.as set softtabstop=8
augroup END

augroup filetype_clojure
    autocmd!
    autocmd BufNewFile,BufRead *.clj set background=light
    autocmd BufNewFile,BufRead *.clj RainbowParenthesesActivate
    autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadRound
    autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadSquare
    autocmd BufNewFile,BufRead *.clj RainbowParenthesesLoadBraces
augroup END
