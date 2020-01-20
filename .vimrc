" tabs in vim
let g:airline#extensions#tabline#enabled = 1

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'hzchirs/vim-material'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets' 
call vundle#end()  

"colors
if (has('termguicolors'))
	set termguicolors
endif

"snippets
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" theme
" Palenight
let g:material_style='palenight'
set background=dark
colorscheme vim-material
let g:airline_theme='material'
