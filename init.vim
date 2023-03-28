lua require('plugins')

"easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:rainbow_active = 1
let g:rooter_patterns = ['Rakefile']

"mkdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1

let mapleader=" "

set mouse=n
set tabstop=4
set expandtab

set noautochdir
:set formatoptions-=cro

let g:rooter_patterns = ['Rakefile']

" Required for operations modifying multiple buffers like rename.
set hidden

filetype plugin on
syntax on
