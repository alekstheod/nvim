" map nerdtree to the ctrl+n
function ToggleTree()
    if @% == ""
        :NvimTreeToggle
    else
        :NvimTreeFindFile
    endif
endfunction

nnoremap <C-Space> :call ToggleTree()<CR>zz
inoremap <C-Space> <Esc>:call ToggleTree()<CR>zz
nnoremap <C-E> :NvimTreeRefresh<CR>
vnoremap <C-E> <Esc>:NvimTreeRefresh<CR>
inoremap <C-E> <Esc>:NvimTreeRefresh<CR>
