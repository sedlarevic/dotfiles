return {
  "miikanissi/modus-themes.nvim",
  priority = 1000,

  config = function()
    require("modus-themes").setup({
      style = "auto",

      on_highlights = function(hl, c)
        hl.cDefine = { fg = c.magenta }

        hl["@variable"] = { fg = c.cyan }

        hl["@variable.member"] = { fg = c.cyan_faint }
        hl["@property"] = { fg = c.cyan_faint }
        hl["@field"] = { fg = c.cyan_faint }
        hl["@lsp.type.property"] = { fg = c.cyan_faint }

        -- let Treesitter distinguish Go numbers from rune literals
        hl["@lsp.type.number.go"] = {}

        hl["@number"] = { fg = c.rust }
        hl["@number.float"] = { fg = c.rust }

        hl["@character"] = { fg = c.blue_warmer }
        hl["@string.go"] = { fg = c.blue_warmer }
        hl["@string.escape.go"] = { fg = c.blue_warmer }

        hl["@lsp.type.macro.cpp"] = { fg = "#7db0ff" }
        hl["@lsp.typemod.macro.declaration.cpp"] = { fg = "#7db0ff" }
        hl["@lsp.typemod.macro.globalScope.cpp"] = { fg = "#7db0ff" }
      end,
    })

    vim.cmd.colorscheme("modus")
  end,
}


--[[return {
  "ficcdaf/ashen.nvim",
  -- optional but recommended,
  -- pin to the latest stable release:
  tag = "*",
  lazy = false,
  priority = 1000,
  -- configuration is optional!
  opts = {
    -- your settings here
  },
  config = function()
    vim.cmd("colorscheme ashen")
  end
}--]]

--[[return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- wave / lotus / dragon
    vim.cmd("colorscheme kanagawa-wave")
  end,
}--]]
