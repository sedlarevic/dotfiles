return {
   "nvimtools/none-ls.nvim",
   dependencies = {
      "nvimtools/none-ls-extras.nvim",
   },
   config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
         sources = {
            --formatter za lua
            null_ls.builtins.formatting.stylua,
            --linter i formatter za js, css itd itd
            null_ls.builtins.formatting.prettier,
            --eslint currently bugged out for js
            require("none-ls.diagnostics.eslint_d").with({
               filetypes = { "typescript", "typescriptreact" }, -- Omogućava samo za ove tipove
            }),
            --formatteri za import u pythonu i python
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.isort,
         },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "none-ls format" })
   end,
}
