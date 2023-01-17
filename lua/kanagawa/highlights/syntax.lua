local c = require("kanagawa.color")
local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    local theme = colors.theme
    config = config or require("kanagawa").config

    return {
        Constant = { fg = theme.syn.constant },
        String = { fg = theme.syn.string },
        Character = { link = "String" },
        Number = { fg = theme.syn.number },
        Boolean = { fg = theme.syn.constant, bold = true },
        Float = { link = "Number" },

        Identifier = { fg = theme.syn.identifier },
        Function = vim.tbl_extend("force", { fg = theme.syn.fun }, config.functionStyle),
        Method = { link = "Function" },
        Statement = vim.tbl_extend("force", { fg = theme.syn.statement }, config.statementStyle),
        -- Conditional = {},
        -- Repeat = {},
        -- Label = {},
        Operator = { fg = theme.syn.operator },
        Keyword = vim.tbl_extend("force", { fg = theme.syn.keyword }, config.keywordStyle),
        Exception = { fg = theme.syn.special2 },

        PreProc = { fg = theme.syn.preproc },
        -- Include = {},
        -- Define = {},
        -- Macro = {},
        -- PreCondit = {},

        Type = vim.tbl_extend("force", { fg = theme.syn.type }, config.typeStyle),
        Struct = { link = "Type" },
        -- StorageClass = {},
        -- Structure = {},
        -- Typedef = {},

        Special = { fg = theme.syn.special1 },
        -- SpecialChar = {},
        -- Tag = {},
        -- Delimiter = {},
        -- SpecialComment = {},
        -- Debug = {},

        Underlined = { fg = theme.syn.special1, underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        Ignore = { link = "NonText" },

        Error = { fg = theme.diag.error },
        Todo = { fg = theme.ui.fg_reverse, bg = theme.diag.info, bold = true },

        qfLineNr = { link = "lineNr" },
        qfFileName = { link = "Directory" },

        -- htmlH1 = {},
        -- htmlH2 = {},

        -- mkdHeading = {},
        -- mkdCode = {},
        -- mkdCodeDelimiter = {},
        -- mkdCodeStart = {},
        -- mkdCodeEnd = {},
        -- mkdLink = {},

        -- markdownHeadingDelimiter = {},
        markdownCode = { fg = theme.syn.string },
        markdownCodeBlock = { fg = theme.syn.string },
        markdownEscape = { fg = "NONE" },
        -- markdownH1 = {},
        -- markdownH2 = {},
        -- markdownLinkText = {},
    }
end

return M
