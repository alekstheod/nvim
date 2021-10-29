lua require('plugins')
syntax on

source <sfile>:h/plugin/autoformat.vim
source <sfile>:h/plugin/bindings.vim
source <sfile>:h/plugin/cpp.vim
source <sfile>:h/plugin/custom.vim
source <sfile>:h/plugin/nvim-tree.vim
source <sfile>:h/plugin/style.vim
source <sfile>:h/plugin/telescope.vim
"source <sfile>:h/plugin/ctrlsf.vim
"source <sfile>:h/plugin/lsp.vim
"lua require('lspconfig').lua.setup{…}
lua require('lspconfig').clangd.setup{…}

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
