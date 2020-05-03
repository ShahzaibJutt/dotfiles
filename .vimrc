" italics
let g:gruvbox_italic=1

set nocompatible              " be iMproved, required

filetype off                  " required

syntax on 		      " Pleasing to eyes

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

call plug#end()

" colors
set t_Co=256

" encoding
set encoding=utf8

" tabbar
:set showtabline=2

" theme
" gruvbox
set background=dark
colorscheme gruvbox

" paste mode
set pastetoggle=<F2>
