return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  opts = {
    keywords = {
      FIX = {
        icon = " ",
        color = "fix",
        alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
      },
      TODO = {
        icon = " ",
        color = "todo",
      },
      HACK = {
        icon = " ",
        color = "hack",
      },
      WARN = {
        icon = " ",
        color = "warn",
        alt = { "WARNING", "XXX" },
      },
      PERF = {
        icon = " ",
        color = "perf",
        alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
      },
      NOTE = {
        icon = " ",
        color = "note",
        alt = { "INFO" },
      },
      TEST = {
        icon = "⏲ ",
        color = "test",
        alt = { "TESTING", "PASSED", "FAILED" },
      },
    },

    colors = {
      fix = { "#ff3b30" },
      todo = { "#ffd400" },
      hack = { "#ff7a00" },
      warn = { "#ff9500" },
      perf = { "#39ff14" },
      note = { "#ff4fd8" },
      test = { "#b388ff" },
    },

    highlight = {
      keyword = "wide",
      after = "fg",
    },
  },
}
