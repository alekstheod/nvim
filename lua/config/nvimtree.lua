local M = {}

function M.grep_at_current_tree_node()
    local node = require("nvim-tree.lib").get_node_at_cursor()
    if not node then
        return
    end
    require("telescope.builtin").live_grep(
        require("telescope.themes").get_ivy({winblend = 10, search_dirs = {node.absolute_path}})
    )
end

function M.run_vim_command(command)
    local node = require("nvim-tree.lib").get_node_at_cursor()
    if not node then
        return
    end
    vim.cmd(command .. " " .. node.absolute_path)
    require("nvim-tree.actions.reloaders.reloaders").reload_explorer()
end

function M.setup()
    vim.g.project_path = vim.fn.getcwd()
    require("nvim-tree").setup(
        {
            disable_netrw = false,
            update_cwd = true,
            git = {
                enable = true,
                ignore = false,
                timeout = 400
            },
            view = {
                width = 30,
                mappings = {
                    list = {
                        {
                            key = {"<leader>ag"},
                            cb = ":lua require'config.nvimtree'.grep_at_current_tree_node()<CR>",
                            mode = "n"
                        },
                        {
                            key = {"<leader>ga"},
                            cb = ":lua require'config.nvimtree'.run_vim_command(':G add -f')<CR>",
                            mode = "n"
                        },
                        {
                            key = {"<leader>gr"},
                            cb = ":lua require'config.nvimtree'.run_vim_command(':G reset')<CR>",
                            mode = "n"
                        },
                        {
                            key = {"<leader>gc"},
                            cb = ":lua require'config.nvimtree'.run_vim_command(':G checkout')<CR>",
                            mode = "n"
                        }
                    }
                }
            }
        }
    )
end

return M
