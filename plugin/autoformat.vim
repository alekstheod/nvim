au BufWrite * :Autoformat
let g:formatdef_buildifier = '"buildifier"'
let g:formatters_buildifier = ['buildifier']

"augroup autoformat_settings
"autocmd FileType bzl AutoFormatBuffer buildifier
""autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
""autocmd FileType dart AutoFormatBuffer dartfmt
""autocmd FileType go AutoFormatBuffer gofmt
""autocmd FileType gn AutoFormatBuffer gn
""autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
""autocmd FileType java AutoFormatBuffer google-java-format
"autocmd FileType python AutoFormatBuffer black
"" Alternative: autocmd FileType python AutoFormatBuffer autopep8
"autocmd FileType rust AutoFormatBuffer rustfmt
"autocmd FileType vue,yml AutoFormatBuffer prettier
"autocmd FileType javascript AutoFormatBuffer prettier
"autocmd FileType xml AutoFormatBuffer tidy
"augroup END

