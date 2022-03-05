local M = {}

function M.setup()
    -- Set completeopt to have a better completion experience
    vim.o.completeopt = "menuone,noselect"

    local cmp = require "cmp"
    cmp.setup {
        snippet = {
            expand = function(args)
                vim.fn["vsnip#anonymous"](args.body)
            end
        },
        mapping = {
            ["<CR>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true
            },
            ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), {"i", "s"}),
            ["<C-j>"] = cmp.mapping(cmp.mapping.select_next_item(), {"i", "s"}),
            ["<C-k>"] = cmp.mapping(cmp.mapping.select_prev_item(), {"i", "s"})
        },
        sources = {
            {name = "nvim_lsp", max_item_count = 10},
            {name = "vsnip", max_item_count = 10},
            {name = "bazel", max_item_count = 10},
            {name = "path", max_item_count = 10},
            {name = "buffer", max_item_count = 10}
        }
    }
end

return M
