local M = {}

function M.grep_at_current_tree_node()
	local node = require("nvim-tree.lib").get_node_at_cursor()
	if not node then
		return
	end
	require("telescope.builtin").live_grep({ search_dirs = { node.absolute_path } })
end

function M.git_add_file()
	local node = require("nvim-tree.lib").get_node_at_cursor()
	if not node then
		return
	end
	vim.cmd("G add -f " .. node.absolute_path)
end

function M.setup()
	vim.g.project_path = vim.fn.getcwd()
	require("nvim-tree").setup({
		disable_netrw = false,
		update_cwd = true,
		git = {
			enable = true,
			ignore = false,
			timeout = 400,
		},
		view = {
			width = 60,
			mappings = {
				list = {
					{
						key = { "<Leader>gr", "gr" },
						cb = ":lua require'config.nvimtree'.grep_at_current_tree_node()<CR>",
						mode = "n",
					},
					{
						key = { "<Leader>ga", "ga" },
						cb = ":lua require'config.nvimtree'.git_add_file()<CR>",
						mode = "n",
					},
				},
			},
		},
	})
end

return M
