set nocompatible
set backspace=2
set whichwrap+=<,>,[,]

map <Esc><Esc> :w<CR>

" This highlights the background in a subtle red for text that goes over the
" 80 column limit (subtle in GUI mode, anyway - in terminal mode it's less so).
" From https://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Show line numbers
set number

" Auto indentation
syntax on
filetype plugin indent on

" Fix block cursor in normal mode and vertical line cursor in insert mode
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"