return {
  "miikanissi/modus-themes.nvim",
  priority = 1000,

  config = function()
    require("modus-themes").setup({
      style = "auto",

      on_highlights = function(hl, c)
        local variable_color = c.cyan
        local member_color = c.slate

        local user_type_color = c.blue_warmer
        local builtin_type_color = c.blue_cooler

        local function_color = c.maroon
        local boolean_color = c.magenta_cooler

        local number_color = c.red_cooler
        local string_color = c.cyan_cooler

        local macro_color = "#7db0ff"
        local namespace_color = c.magenta

        hl.cDefine = { fg = c.magenta }

        -- variables
        hl["@variable"] = { fg = variable_color }

        -- struct fields, object members and properties
        hl["@variable.member"] = { fg = member_color }
        hl["@property"] = { fg = member_color }
        hl["@field"] = { fg = member_color }
        hl["@lsp.type.property"] = { fg = member_color }

        -- user-defined types:
        hl.Type = { fg = user_type_color }
        hl["@type"] = { link = "Type" }

        -- namespaces, modules and packages
        hl["@module"] = { fg = namespace_color }
        hl["@namespace"] = { fg = namespace_color }

        hl["@lsp.type.namespace"] = {
          fg = namespace_color,
        }

        hl["@lsp.type.type"] = { link = "Type" }
        hl["@lsp.type.class"] = { link = "Type" }
        hl["@lsp.type.enum"] = { link = "Type" }
        hl["@lsp.type.interface"] = { link = "Type" }
        hl["@lsp.type.struct"] = { link = "Type" }
        hl["@lsp.type.typeParameter"] = { link = "Type" }

        -- built-in types:
        hl["@type.builtin"] = { fg = builtin_type_color }

        -- LSP may mark built-in types as default-library types
        hl["@lsp.typemod.type.defaultLibrary"] = {
          fg = builtin_type_color,
        }

        hl["@lsp.typemod.class.defaultLibrary"] = {
          fg = builtin_type_color,
        }

        -- function and method definitions
        hl.Function = { fg = function_color }
        hl["@function"] = { link = "Function" }
        hl["@function.method"] = { link = "Function" }
        hl["@method"] = { link = "Function" }

        -- function and method calls
        hl["@function.call"] = { link = "Function" }
        hl["@function.method.call"] = { link = "Function" }
        hl["@method.call"] = { link = "Function" }

        -- LSP function and method tokens
        hl["@lsp.type.function"] = { link = "Function" }
        hl["@lsp.type.method"] = { link = "Function" }

        -- keep function keywords in the keyword family:
        hl["@keyword.function"] = { link = "Keyword" }

        -- boolean literals: true, false, True, False
        hl.Boolean = {
          fg = boolean_color,
          bold = true,
        }

        hl["@boolean"] = { link = "Boolean" }

        -- numbers
        hl.Number = { fg = number_color }
        hl.Float = { link = "Number" }

        hl["@number"] = { link = "Number" }
        hl["@number.float"] = { link = "Number" }

        -- string and character literals
        hl.String = { fg = string_color }
        hl.Character = { fg = string_color }

        hl["@string"] = { link = "String" }
        hl["@string.escape"] = { link = "String" }
        hl["@character"] = { link = "Character" }

        -- gopls reports rune literals as semantic number tokens.
        -- Disable that semantic color so Tree-sitter can recognize them
        -- as characters.
        hl["@lsp.type.number.go"] = {}

        -- macros
        hl["@lsp.type.macro"] = { fg = macro_color }
        hl["@lsp.typemod.macro.declaration"] = {
          fg = macro_color,
        }
        hl["@lsp.typemod.macro.globalScope"] = {
          fg = macro_color,
        }
      end,
    })

    vim.cmd.colorscheme("modus")
  end,
}

-- return {
--   "ficcdaf/ashen.nvim",
--   -- optional but recommended,
--   -- pin to the latest stable release:
--   tag = "*",
--   lazy = false,
--   priority = 1000,
--   -- configuration is optional!
--   opts = {
--     -- your settings here
--   },
--   config = function()
--     vim.cmd("colorscheme ashen")
--   end
-- }

--[[return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- wave / lotus / dragon
    vim.cmd("colorscheme kanagawa-wave")
  end,
}--]]
