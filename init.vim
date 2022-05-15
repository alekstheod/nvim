lua require('plugins')

lua require('lspconfig').clangd.setup{}
lua require('lspconfig').bashls.setup{}
lua require('lspconfig').jdtls.setup{}
lua require('lspconfig').solargraph.setup{}

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

let g:rooter_patterns = ['Rakefile']

" Required for operations modifying multiple buffers like rename.
set hidden

filetype plugin on
syntax on
