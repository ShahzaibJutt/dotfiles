set nocompatible              " be iMproved, required

filetype off                  " required

syntax on 		      " Pleasing to eyes


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'morhetz/gruvbox'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'

call vundle#end()  

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
