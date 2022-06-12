nnoremap <Tab> :lua require('telescope.builtin').buffers(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
nnoremap <S-f> :lua require('telescope.builtin').grep_string(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>

function! GrepFor(arg)
    :lua require('telescope.builtin').grep_string(require('telescope.themes').get_ivy({ winblend = 10, search=vim.fn.eval('a:arg') }))
endfunction

function! s:GrepIn(dir)
    :lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy({ winblend = 10, search=vim.fn.eval('a:dir') }))
endfunction

vnoremap <S-f> :call GrepFor(GetVisualSelection())<CR>

noremap <leader>re :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader><leader> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>co :lua require'telescope.builtin'.command_history(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>ju :lua require'telescope.builtin'.jumplist(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>fb :lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>bb :call v:lua.deleteBuffers()<CR>

command! -nargs=1 Rg :call s:GrepIn(<q-args>)
