 return {
   {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.8",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
         local builtin = require("telescope.builtin")
         vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
         vim.keymap.set("n", "<leader>gr", function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
         end, { desc = "Telescope live grep" })
         vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
         vim.keymap.set("n", "<leader>gg", builtin.git_files, { desc = "Telescope git files" })
         vim.keymap.set("n", "<leader>km", builtin.keymaps,{desc = "Telescope show keymaps"})
      end
   },
   {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
         require("telescope").setup({
            extensionse= {
               ["ui-select"] = {
                  require("telescope.themes").get_dropdown({}),
               },
            },
         })
         require("telescope").load_extension("ui-select")
      end,
  },
}
