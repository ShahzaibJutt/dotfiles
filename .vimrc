set nocompatible              " be iMproved, required

filetype off                  " required

syntax on 		      " Pleasing to eyes

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

" colors
set t_Co=256

" airline symbols
let g:airline_powerline_fonts = 1
set encoding=utf8

" tabbar
let g:airline#extensions#tabline#enabled = 1

" theme
" gruvbox
set background=dark
colorscheme gruvbox
