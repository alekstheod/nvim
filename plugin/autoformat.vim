augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END

augroup auto_comment
    au!
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END


let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_python = ['black']
let g:neoformat_enabled_ruby = ['rubocop']
let g:neoformat_enabled_yaml = ['prettier']
let g:neoformat_enabled_json = ['prettier']
let g:neoformat_enabled_xml = ['prettier']
let g:neoformat_enabled_kotlin = ['prettier']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_typescriptreact = ['prettier']
let g:neoformat_enabled_javascriptreact = ['prettier']
let g:neoformat_enabled_lua = ['stylua']
let g:neoformat_enabled_cpp = ['clangformat']
"let g:neoformat_enabled_cs = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']
let g:neoformat_enabled_proto = ['clangformat']

"let g:neoformat_only_msg_on_error = 2
"let g:neoformat_verbose = 1
