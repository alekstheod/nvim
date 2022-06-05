"nnoremap <leader><leader> :Telescope find_files<CR>
nnoremap <Tab> :Telescope buffers<CR>
nnoremap <S-f> :lua require('telescope.builtin').grep_string(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>

function! GrepFor(arg)
	:lua require('telescope.builtin').grep_string(require('telescope.themes').get_ivy({ winblend = 10, search=vim.fn.eval('a:arg') }))
endfunction

function! s:GrepIn(dir)
	:lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy({ winblend = 10, search=vim.fn.eval('a:dir') }))
endfunction

vnoremap <S-f> :call GrepFor(GetVisualSelection())<CR>

lua << EOF

local actions = require('telescope.actions')

local action_state = require "telescope.actions.state"
local action_utils = require "telescope.actions.utils"

function selection_by_index()
	local prompt_bufnr = vim.api.nvim_get_current_buf()
	local current_picker = action_state.get_current_picker(prompt_bufnr)
	local results = {}
	action_utils.map_selections(prompt_bufnr, function(entry)
	table.insert(results, entry.bufnr) end)
	return results

end

function _G.deleteBuffers()
	local buffers = selection_by_index()
	for i, v in ipairs(buffers) do
		local command = 'bd! '..v
		vim.api.nvim_command(command)
	end
end

require('telescope').setup{
defaults = {
    file_ignore_patterns = {"sorbet/*", "tmp/.*", "vendor/.*", ".git/.*", "bin/.*", "log/.*", ".bundle/.*"},
	mappings = {
		i = {
			["<esc>"] = actions.close,
			["<C-j>"] = actions.move_selection_next,
			["<C-k>"] = actions.move_selection_previous,
			["<C-Space>"] = actions.toggle_selection,
			["<del>"] = deleteBuffers,
			},
		},
	}
}

EOF

"nnoremap <leader><leader> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({}))<cr>
noremap <leader>re :lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader><leader> :lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>co :lua require'telescope.builtin'.command_history(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>ju :lua require'telescope.builtin'.jumplist(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>fb :lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>
noremap <leader>bb :call v:lua.deleteBuffers()<CR>

command! -nargs=1 Rg :call s:GrepIn(<q-args>)
