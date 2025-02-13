return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        
        -- REQUIRED
        harpoon:setup()
        
        -- Basic keymaps
        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = "Harpoon add"})
        vim.keymap.set("n", "<leader>5", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Harpoon toggle quick menu"})
        -- Navigation
        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
    end
}
