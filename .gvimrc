set encoding=utf8
let g:airline_powerline_fonts=1
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h20
"set guifont=monofur\ for\ Powerline:h22
set guifont=Meslo\ LG\ S\ for\ Powerline:h18
let g:Powerline_symbols='fancy'

if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▒'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '▒'
"let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
" "
" " Special behaviors for different filetypes
"
" " incremental search
set incsearch

set noerrorbells
set novisualbell
set t_vb=

autocmd! GUIEnter * set vb t_vb=
"
" Special behaviors for different filetypes
au BufRead,BufNewFile *.ncl set filetype=ncl
au BufRead,BufNewFile *.md set filetype=ghmarkdown textwidth=70 wrap 
au BufRead,BufNewFile *.html set filetype=htmldjango textwidth=70 wrap 
au BufRead,BufNewFile *.js,*.html set tabstop=8 expandtab softtabstop=2 shiftwidth=2
au BufRead,BufNewFile *.txt set filetype=asciidoc 
au BufRead,BufNew *.md,*.asciidoc,*.txt setlocal textwidth=80 
autocmd BufRead,BufNewFile *.txt,*.asciidoc,README,TODO,CHANGELOG,NOTES,ABOUT
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>
au BufRead,BufNewFile *.tex set colorcolumn=0

" Incremental searching
set incsearch

" remove trailing whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
au BufRead,BufNewFile *.py set foldmethod=indent foldnestmax=3

" Folding
nnoremap <space> za
vnoremap <space> zf

colorscheme molokai
highlight ColorColumn guibg=lightblue

"colorscheme solarized
