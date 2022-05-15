lua require('lspconfig').clangd.setup{}
lua require('lspconfig').bashls.setup{}
lua require('lspconfig').pylsp.setup{}

nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>fx :lua vim.lsp.buf.code_action()<CR>



