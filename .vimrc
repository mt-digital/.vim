" Pathogen INFECT!!!!!
execute pathogen#infect()

""" Window Configurations 
" line numbers
set number 
" syntax highlighting
syntax on
" auto indent options
filetype plugin indent on
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

" line width guide at 80th column
set colorcolumn=80
" 256 colors
set t_Co=256
" monolai
colorscheme molokai

" more things to get vim-airline to work
set encoding=utf-8
" start vim-airline at startup
set laststatus=2
" populate the g:airline_symbols dictionary automatically at startup
let g:airline_powerline_fonts = 1
set guifont=Ubuntu\ Mono\ for\ Powerline:h16
let g:Powerline_symbols='fancy'

""" Mappings 
" remap escape
inoremap <C-e> <Esc>
" use semicolon in place of colon in normal mode
noremap ; :

" use function keys to switch between windows
map <F1> <C-w>h
map <F2> <C-w>k
map <F3> <C-w>j
map <F4> <C-w>l

let mapleader = ","

""" Custom Commands 
" source .vimrc
if !exists(":Sov")
	command Sov execute "source ~/.vimrc"
endif

" Special behaviors for different filetypes
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.html set filetype=htmldjango

au BufRead,BufNewFile *.tex set foldmethod=syntax foldlevel=2
