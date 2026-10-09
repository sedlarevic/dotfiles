return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local treesitter = require("nvim-treesitter")
    local parsers = {
      "lua",
      "vim",
      "vimdoc",
      "c",
      "cpp",
      "c_sharp",
      "cmake",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "python",
      "bash",
      "json",
      "markdown",
      "markdown_inline",
    }
    treesitter.install(parsers)
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "lua",
        "vim",
        "help",
        "c",
        "cpp",
        "cs",
        "cmake",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "python",
        "sh",
        "json",
        "markdown",
      },
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
