" autocompleteion
set wildmode=longest,list,full

" leader key
let mapleader=" "

" system clipboard
set clipboard+=unnamedplus

" center screen in normal mode
autocmd InsertEnter * norm zz

" trailing spaces
autocmd BufWritePre * %s/\s\+$//e

" ignorecase
set ignorecase

" relative line numbers
set relativenumber

" syntax highlighting
syntax on

" true colors
set termguicolors

" plugin
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" colorscheme
colorscheme dracula

" airline colorsceme
let g:lightline = {
\ 'colorscheme': 'dracula',
\ }

" tabbar
set showtabline=2

" paste mode
set pastetoggle=<F2>

