set encoding=utf8
let g:airline_powerline_fonts=1
set guifont=Ubuntu\ Mono\ for\ Powerline:h21
let g:Powerline_symbols='fancy'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
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
"
" Special behaviors for different filetypes
au BufRead,BufNewFile *.md set filetype=markdown

" incremental search
set incsearch
