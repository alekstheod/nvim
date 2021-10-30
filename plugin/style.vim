set number relativenumber

"if &diff
colorscheme dracula
"else
"colorscheme dracula
"endif

"general
"set guifont=Monoid-Retina:12
set wrap!

set termguicolors
set t_Co=256

if &diff
	colorscheme evening
else
	let g:dracula_colorterm = 1
	colorscheme dracula
endif


set nu rnu
set encoding=utf-8
set shiftwidth=4
set tabstop=4
set incsearch
set cursorline
