lua require('plugins')
syntax on

lua require('lspconfig').clangd.setup{…}
lua require('lspconfig').bashls.setup{…}

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
filetype plugin on

set noautochdir

" Required for operations modifying multiple buffers like rename.
set hidden
