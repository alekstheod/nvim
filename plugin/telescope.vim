"nnoremap <leader><leader> :Telescope find_files<CR>
nnoremap <Tab> :Telescope buffers<CR>
nnoremap <S-f> :Telescope live_grep<CR>
nnoremap <leader>ff :Telescope grep_string<CR>

lua << EOF

local actions = require('telescope.actions')
require('telescope').setup{
defaults = {
	mappings = {
		i = {
			["<esc>"] = actions.close,
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-Space>"] = actions.toggle_selection,
			},
		},
	}
}

EOF

nnoremap <leader><leader> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<CR>
" Change an option
nnoremap <leader><leader> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>
