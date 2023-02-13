set number
"set relativenumber
set wrap!
set encoding=UTF-8
set shiftwidth=4
set tabstop=4
set incsearch
set termguicolors
"set t_Co=256
"if !exists('g:syntax_on')
"syntax enable
"endif

set termguicolors
set cursorline

if &diff
    colorscheme evening
else
    "let g:dracula_colorterm = 1
    colorscheme custom_paper_color
endif
