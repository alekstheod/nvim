inoremap <C-Space> <Esc>:call ToggleTree()<CR>zz
=======
function! OpenTree()
	if @% == ""
		NvimTreeToggle
	else
		NvimTreeFindFile
	endif
endfun

nnoremap <C-Space> :call OpenTree()<CR>zz
inoremap <C-Space> <Esc>:call OpenTree()<CR>zz
nnoremap <C-E> :NvimTreeRefresh<CR>
vnoremap <C-E> <Esc>:NvimTreeRefresh<CR>
inoremap <C-E> <Esc>:NvimTreeRefresh<CR>
