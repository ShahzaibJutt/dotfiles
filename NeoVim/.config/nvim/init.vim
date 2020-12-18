" coc.nvim
source ~/.config/nvim/coc.vim
" reload xrdb
autocmd BufWritePost ~/.Xresources !xrdb ~/.Xresources

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
set number relativenumber

" syntax highlighting
syntax on

" true colors
set termguicolors

" plugin
call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" colorscheme
colorscheme dracula

" airline colorsceme
let g:lightline = {
      \   'colorscheme': 'dracula',
      \   'tab_component_function': {
      \   'tabnum': 'LightlineWebDevIcons',
      \ },
      \   'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
" tabbar
set showtabline=2
function! LightlineWebDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction

" paste mode
set pastetoggle=<F2>

" nerd tree
map <F3> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
