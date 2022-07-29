local M = {}

local actions = require("telescope.actions")

local action_state = require("telescope.actions.state")
local action_utils = require("telescope.actions.utils")

function selection_by_index()
    local prompt_bufnr = vim.api.nvim_get_current_buf()
    local current_picker = action_state.get_current_picker(prompt_bufnr)
    local results = {}
    action_utils.map_selections(
        prompt_bufnr,
        function(entry)
            table.insert(results, entry.bufnr)
        end
    )
    return results
end

function _G.deleteBuffers()
    local buffers = selection_by_index()
    for i, v in ipairs(buffers) do
        local command = "bd! " .. v
        vim.api.nvim_command(command)
    end
end

function M.setup()
    require("telescope").setup(
        {
            defaults = {
                path_display = {"smart"},
                file_ignore_patterns = {
                    "eagerlib/*",
                    "tmp/.*",
                    "sorbet/*",
                    "vendor/.*",
                    ".git/.*",
                    ".*/bin/.*",
                    ".*/log/.*",
                    ".bundle/.*"
                },
                mappings = {
                    i = {
                        ["<esc>"] = actions.close,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-Space>"] = actions.toggle_selection,
                        ["<del>"] = deleteBuffers
                    }
                }
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    override_generic_sorter = true, -- override the generic sorter
                    override_file_sorter = true, -- override the file sorter
                    case_mode = "smart_case" -- or "ignore_case" or "respect_case"
                    -- the default case_mode is "smart_case"
                }
            }
        }
    )
    require("telescope").load_extension("fzf")
end

return M
