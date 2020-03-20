

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'hzchirs/vim-material'
Plugin 'morhetz/gruvbox'
call vundle#end()  

"colors
if (has('termguicolors'))
	set termguicolors
endif
"airline powerline
let g:airline_powerline_fonts = 1

" theme
" gruvbox
set background=dark
colorscheme gruvbox
" Palenight
"let g:material_style='palenight'
"colorscheme vim-material
