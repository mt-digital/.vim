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

" 256 colors
set t_Co=256
" Monokai
"colorscheme Monokai
colorscheme molokai
highlight ColorColumn ctermbg=25
"colorscheme Tomorrow-Night
"AirlineTheme understated

" line width guide at 80th column
set colorcolumn=80
highlight Folded ctermbg=235

" more things to get vim-airline to work
set encoding=utf-8
" start vim-airline at startup
set laststatus=2
" populate the g:airline_symbols dictionary automatically at startup
let g:airline_powerline_fonts = 1

""" Mappings 
" remap escape
inoremap <C-e> <Esc>
" use semicolon in place of colon in normal mode
noremap ; :
set pastetoggle=<F1>
 
"" Window mappings
" use function keys to switch between windows
map <F1> <C-w>h
map <F2> <C-w>k
map <F3> <C-w>j
map <F4> <C-w>l

map <F5> <C-w>-
map <F6> <C-w>+
map <F7> :vertical resize -2 <CR>
map <F8> :vertical resize +2 <CR>


let mapleader = ","

""" Custom Commands 
" source .vimrc
if !exists(":Sov")
	command Sov execute "source ~/.vimrc"
endif

" Special behaviors for different filetypes
au BufRead,BufNewFile *.md set filetype=ghmarkdown textwidth=70 wrap 
au BufRead,BufNewFile *.txt set filetype=asciidoc 
au BufRead,BufNew *.md,*.asciidoc,*.txt setlocal textwidth=80 
autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>


" Incremental searching
set incsearch

" remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
au BufRead,BufNewFile *.py set foldmethod=indent foldnestmax=3

" Folding
nnoremap <space> za
vnoremap <space> zf
