nnoremap <F7> :match StatusLineTerm /<C-R><C-W>/<CR>
nnoremap <c-y> :let @+=join([expand('%'),  line(".")], ':')<CR>
nnoremap <C-Up> :resize -5<CR>
nnoremap <C-Down> :resize +5<CR>
nnoremap <C-Right> :vertical resize +5<CR>
nnoremap <C-Left> :vertical resize -5<CR>
nnoremap <C-l> <c-w>l
nnoremap <C-h> <c-w>h
nnoremap <C-k> <c-w>k
nnoremap <C-j> <c-w>j
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
nnoremap <Left> <C-w>h
nnoremap <Right> <C-w>l
nnoremap <c-q> :Bdelete!<cr>
vnoremap <c-y> "+y
"nnoremap <c-y> :let @+ = expand("%")<cr>
nnoremap <c-c> <c-w>c
nnoremap <c-\> :call Touch()<CR>
nnoremap <silent>gb :bprevious<CR>
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<S-Tab>"
noremap <silent><C-S>          :update!<CR><Esc>
vnoremap <silent><C-S>         <C-C>:update!<CR><Esc>
inoremap <silent><C-S>         <C-O>:update!<CR><Esc>
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <S-Tab> :bn<CR>
command! Q :qa!
command! E :e!
vnoremap p "_dP
"nnoremap p "0p
"vnoremap p "0p
