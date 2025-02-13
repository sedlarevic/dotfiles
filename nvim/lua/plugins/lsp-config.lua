return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "clojure_lsp", "gopls" },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require("lspconfig")
         local capabilities = require("cmp_nvim_lsp").default_capabilities()
         lspconfig.lua_ls.setup({
            capabilities = capabilities,
         })
         lspconfig.ts_ls.setup({
            capabilities = capabilities,
            on_attach = function(client, bufnr)
               client.server_capabilities.documentFormattingProvider = false -- Onemogućava formatiranje preko tsserver-a
            end,
         })
         lspconfig.clojure_lsp.setup({
            capabilties = capabilities,
         })
         lspconfig.gopls.setup({
            capabilities = capabilities,
         })
         lspconfig.pyright.setup({
            capabilities = capabilities,
         })
         lspconfig.cssls.setup({
            capabilites = capabilities,
         })
      end,
   },
}
