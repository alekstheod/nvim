augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END

let g:neoformat_basic_format_align = 1
let g:neoformat_basic_format_retab = 1
let g:neoformat_basic_format_trim = 1

let g:neoformat_enabled_python = ['black']
let g:neoformat_enabled_ruby = ['rubocop']
let g:neoformat_enabled_typescript = ['prettier']
let g:neoformat_enabled_typescriptreact = ['prettier']
let g:neoformat_enabled_javascripttreact = ['prettier']
let g:neoformat_enabled_lua = ['stylua']
let g:neoformat_enabled_cpp = ['clang-format']

"let g:neoformat_only_msg_on_error = 1
"let g:neoformat_verbose = 1
