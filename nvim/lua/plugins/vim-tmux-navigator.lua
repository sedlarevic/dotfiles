return {
    "christoomey/vim-tmux-navigator",
    event = "VeryLazy",
    config = function()
        local opts = { noremap = true, silent = true }
        
        -- Mappings for Tmux Navigator
        vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
        vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<CR>", opts)
        vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<CR>", opts)
        vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<CR>", opts)
        vim.keymap.set("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<CR>", opts)
    end,
}
