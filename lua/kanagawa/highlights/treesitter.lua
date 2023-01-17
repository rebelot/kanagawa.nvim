local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config
    local theme = colors.theme
    return {
        -- TSAnnotation = {},
        ["@attribute"] = { link = "Constant" },
        -- TSBoolean = {},
        -- TSCharacter = {},
        -- TSComment = {},
        -- TSNote = { fg = c.fg_dark, bg = c.diag.hint, nocombine = true, bold = true}, -- links to SpecialComment -> Special
        ["@text.warning"] = { link = "Todo" }, --default
        ["@text.strong"] = { bold = true },
        ["@text.emphasis"] = { italic = true },
        ["@text.title"] = { link = "Function" },
        ["@text.danger"] = { link = "WarningMsg" }, --default
        ["@text.literal"] = { link = "String" },
        ["@constructor"] = { fg = theme.syn.keyword }, -- Function/Special/Statement/Keyword
        -- TSConditional = {},
        -- TSConstant = {},
        -- TSConstBuiltin = {},
        -- TSConstMacro = {},
        -- TSError = { fg = theme.diag.error },
        -- TSException = { link = 'Exception' }, -- default, -> statement
        ["@exception"] = vim.tbl_extend(
            "force",
            { fg = config.specialException and theme.syn.special3 or theme.syn.statement },
            config.statementStyle
        ),
        ["@field"] = { link = "Identifier" }, -- default
        -- TSField = { link = 'Variable'},
        -- TSFloat = {},
        -- TSFunction = {},
        -- TSFuncBuiltin = {link = "Function" },
        -- TSFuncMacro = {},
        -- TSInclude = {},
        ["@keyword"] = { link = "Keyword" },
        -- TSKeywordFunction = { link = "Keyword" }, -- default
        -- TSKeywordFunction = { link = "Function" },
        ["@keyword.return"] = vim.tbl_extend(
            "force",
            { fg = config.specialReturn and theme.syn.special3 or theme.syn.keyword },
            config.keywordStyle
        ),
        ["@label"] = { link = "Label" },
        ["@method"] = { link = "Function" },
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        ["@operator"] = { link = "Operator" },
        ["@keyword.operator"] = { fg = theme.syn.operator, bold = true },
        ["@namespace"] = { link = "Identifier" }, -- default
        ["@parameter"] = { fg = theme.syn.parameter },
        -- TSParameterReference = {},
        ["@property"] = { link = "Identifier" }, -- default
        -- TSPunctDelimiter = { fg = c.op },
        ["@punctuation.delimiter"] = { fg = theme.syn.punct1 },
        ["@punctuation.bracket"] = { fg = theme.syn.punct1 },
        ["@punctuation.Special"] = { fg = theme.syn.punct1 },
        -- TSRepeat = {},
        -- TSString = {},
        ["@string.regex"] = { fg = theme.syn.regex },
        ["@string.escape"] = { fg = theme.syn.regex, bold = true },
        ["@symbol"] = { fg = theme.syn.identifier },
        -- TSType = {},
        -- TSTypeBuiltin = {},
        ["@variable"] = { fg = theme.ui.fg },
        ["@variable.builtin"] = vim.tbl_extend("force", { fg = theme.syn.special2 }, config.variablebuiltinStyle),

        -- TSTag = {},
        -- TSTagDelimiter = {},
        ["@tag"] = { link = "Tag" },
        ["@tag.delimiter"] = { fg = theme.syn.punct1 },
        ["@tag.attribute"] = { fg = theme.syn.identifier },
        -- TSText = {},
        -- TSTextReference = { fg = c.sp2 },
        -- TSEmphasis = {},
        -- TSUnderline = {},
        -- TSStrike = {},
        -- TSTitle = {},
        -- TSLiteral = {},
        -- TSURI = {},
    }
end

return M
