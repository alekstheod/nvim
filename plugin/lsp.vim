lua require('lspconfig').bashls.setup{}
lua require('lspconfig').clangd.setup{}
lua require('lspconfig').jdtls.setup{}
lua require('lspconfig').pylsp.setup{}
lua require('lspconfig').sorbet.setup{}
lua require('lspconfig').tsserver.setup{}
lua require('lspconfig').lua_ls.setup{}

lua << EOF
require('lspconfig').omnisharp.setup{
cmd = { "omnisharp", "-lsp", "--hostPID", tostring(pid) },
enable_editorconfig_support = true,
on_attach = function(client, bufnr) client.server_capabilities.semanticTokensProvider = nil end,
handlers = { ["textDocument/definition"] = require('omnisharp_extended').handler,},
}
EOF

nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>fx :lua vim.lsp.buf.code_action()<CR>
