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
" Monokai
colorscheme Monokai


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
