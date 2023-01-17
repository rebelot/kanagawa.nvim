local M = {}
local c = require("kanagawa.color")

---@param termcolors Color[]
local function setup_terminal_colors(termcolors)
    local g = vim.g
    for i = 0, 17 do
        g["terminal_color_" .. i] = termcolors[i]
    end
end

--- generate highlights table
---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config

    local theme = colors.theme
    local palette = colors.palette

    local hlgroups = {
        Comment = vim.tbl_extend("force", { fg = theme.syn.comment }, config.commentStyle),
        ColorColumn = { bg = theme.ui.shade1 },
        Conceal = { fg = theme.ui.shade4, bold = true },
        Cursor = { fg = theme.ui.bg, bg = theme.ui.fg },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorLine = { bg = theme.ui.shade2 },
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = theme.syn.fun },
        DiffAdd = { bg = theme.diff.add },
        DiffChange = { bg = theme.diff.change },
        DiffDelete = { fg = theme.vcs.removed, bg = theme.diff.delete },
        DiffText = { bg = theme.diff.text },
        EndOfBuffer = { fg = theme.ui.bg },
        -- TermCursor = {},
        -- TermCursorNC = {},
        ErrorMsg = { fg = theme.diag.error },
        WinSeparator = {
            fg = tostring(c(theme.ui.shade0):lighten(0.6)),
            bg = config.dimInactive and theme.ui.bg_dim or "NONE",
        },
        VertSplit = { link = "WinSeparator" },
        Folded = { fg = theme.ui.shade4, bg = theme.ui.shade1 },
        FoldColumn = { fg = theme.ui.shade3 },
        SignColumn = { fg = theme.ui.shade3 },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = theme.ui.fg, bg = theme.vcs.removed },
        LineNr = { fg = theme.ui.shade3 },
        CursorLineNr = { fg = theme.diag.warning, bold = true },
        MatchParen = { fg = theme.diag.warning, bold = true },
        ModeMsg = { fg = theme.diag.warning, bold = true },
        MsgArea = { fg = theme.ui.fg_dim },
        -- MsgSeparator = {},
        MoreMsg = { fg = theme.diag.info, bg = theme.ui.bg },
        NonText = { fg = theme.ui.nontext },
        Normal = { fg = theme.ui.fg, bg = not config.transparent and theme.ui.bg or "NONE" },
        NormalNC = config.dimInactive and { fg = theme.ui.fg_dim, bg = theme.ui.bg_dim } or { link = "Normal" },
        NormalSB = { link = "Normal" },
        NormalFloat = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },
        FloatBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },
        FloatTitle = { fg = theme.ui.shade4, bg = theme.ui.float.bg_border, bold = true },
        Pmenu = { fg = theme.ui.pmenu.fg, bg = theme.ui.pmenu.bg },
        PmenuSel = { fg = "NONE", bg = theme.ui.pmenu.bg_sel },
        PmenuSbar = { bg = theme.ui.pmenu.bg_sbar },
        PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = theme.ui.fg, bg = theme.ui.bg_search },
        CurSearch = {
            link = "Search", --[[ IncSearch ]]
        },
        IncSearch = { fg = theme.ui.fg_reverse, bg = theme.ui.bg_incsearch },
        SpecialKey = { link = "NonText" },
        SpellBad = { undercurl = true, sp = theme.diag.error },
        SpellCap = { undercurl = true, sp = theme.diag.warning },
        SpellLocal = { undercurl = true, sp = theme.diag.warning },
        SpellRare = { undercurl = true, sp = theme.diag.warning },
        StatusLine = { fg = theme.ui.fg_dim, bg = theme.ui.shade0 },
        StatusLineNC = { fg = theme.syn.comment, bg = theme.ui.shade0 },
        Winbar = { fg = theme.ui.fg_dim, bg = "NONE" },
        WinbarNC = { fg = theme.ui.fg_dim, bg = config.dimInactive and theme.ui.bg_dim or "NONE" },
        TabLine = { bg = theme.ui.shade0, fg = theme.ui.shade4 },
        TabLineFill = { bg = theme.ui.bg },
        TabLineSel = { fg = theme.ui.fg_dim, bg = theme.ui.shade2 },
        Title = { fg = theme.syn.fun, bold = true },
        Visual = { bg = theme.ui.bg_visual },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = theme.diag.warning },
        Whitespace = { fg = theme.ui.whitespace },
        WildMenu = { link = "Pmenu" },

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

        debugPC = { bg = theme.diff.delete },
        debugBreakpoint = { fg = theme.syn.special1 },

        LspReferenceText = { bg = theme.diff.text },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { link = "LspReferenceText" },

        DiagnosticError = { fg = theme.diag.error },
        DiagnosticWarn = { fg = theme.diag.warning },
        DiagnosticInfo = { fg = theme.diag.info },
        DiagnosticHint = { fg = theme.diag.hint },

        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignWarn = { link = "DiagnosticWarn" },
        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },

        DiagnosticVirtualTextError = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

        DiagnosticUnderlineError = { undercurl = true, sp = theme.diag.error },
        DiagnosticUnderlineWarn = { undercurl = true, sp = theme.diag.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = theme.diag.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = theme.diag.hint },

        LspSignatureActiveParameter = { fg = theme.diag.warning },
        LspCodeLens = { fg = theme.syn.comment },

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

        -- Lua
        -- luaTSProperty = {},

        -- LspTrouble
        -- LspTroubleText = {},
        -- LspTroubleCount = {},
        -- LspTroubleNormal = {},

        -- Illuminate
        -- illuminatedWord = {},
        -- illuminatedCurWord = {},

        -- vcs
        diffAdded = { fg = theme.vcs.added },
        diffRemoved = { fg = theme.vcs.removed },
        diffDeleted = { fg = theme.vcs.removed },
        diffChanged = { fg = theme.vcs.changed },
        diffOldFile = { fg = theme.vcs.removed },
        diffNewFile = { fg = theme.vcs.added },
        -- diffFile = { fg = c.steelGray },
        -- diffLine = { fg = c.steelGray },
        -- diffIndexLine = { link = 'Identifier' },

        -- Neovcs
        -- NeovcsBranch = {},
        -- NeovcsRemote = {},
        NeovcsDiffDelete = { fg = theme.vcs.removed, bg = theme.diff.delete },
        NeovcsDiffAdd = { fg = theme.vcs.added, bg = theme.diff.add },
        NeovcsHunkHeader = { fg = theme.syn.identifier },
        NeovcsDiffContextHighlight = { bg = theme.diff.change },

        -- vcsGutter
        -- vcsGutterAdd = {},
        -- vcsGutterChange = {},
        -- vcsGutterDelete = {},

        -- vcsSigns
        vcsSignsAdd = { link = "diffAdded" },
        vcsSignsChange = { link = "diffChanged" },
        vcsSignsDelete = { link = "diffDeleted" },
        vcsSignsDeleteLn = { bg = theme.diff.delete },

        -- Telescope                      = {},
        TelescopeBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
        TelescopeResultsClass = { link = "TSType" },
        TelescopeResultsStruct = { link = "TSType" },
        TelescopeResultsVariable = { link = "TSVariable" },

        -- NvimTree                       = {},
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeRootFolder = { fg = theme.syn.identifier, bold = true },
        NvimTreevcsDirty = { fg = theme.vcs.changed },
        NvimTreevcsNew = { fg = theme.vcs.added },
        NvimTreevcsDeleted = { fg = theme.vcs.removed },
        NvimTreeSpecialFile = { fg = theme.syn.special1 },
        -- NvimTreeIndentMarker           = {},
        NvimTreeImageFile = { fg = theme.syn.special2 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = theme.syn.string, bold = true },
        NvimTreevcsStaged = { fg = theme.vcs.added },
        NvimTreeOpenedFile = { fg = theme.syn.special1, italic = true },
        NvimTreeWinSeparator = { link = "WinSeparator" },

        -- Dashboard
        DashboardShortCut = { fg = theme.syn.special1 },
        DashboardHeader = { fg = theme.vcs.removed },
        DashboardCenter = { fg = theme.syn.identifier },
        DashboardFooter = { fg = theme.syn.fun },

        -- Notify
        NotifyERRORBorder = { link = "DiagnosticError" },
        NotifyWARNBorder = { link = "DiagnosticWarn" },
        NotifyINFOBorder = { link = "DiagnosticInfo" },
        NotifyHINTBorder = { link = "DiagnosticHint" },
        NotifyDEBUGBorder = { link = "Debug" },
        NotifyTRACEBorder = { link = "Comment" },
        NotifyERRORIcon = { link = "DiagnosticError" },
        NotifyWARNIcon = { link = "DiagnosticWarn" },
        NotifyINFOIcon = { link = "DiagnosticInfo" },
        NotifyHINTIcon = { link = "DiagnosticHint" },
        NotifyDEBUGIcon = { link = "Debug" },
        NotifyTRACEIcon = { link = "Comment" },
        NotifyERRORTitle = { link = "DiagnosticError" },
        NotifyWARNTitle = { link = "DiagnosticWarn" },
        NotifyINFOTitle = { link = "DiagnosticInfo" },
        NotifyHINTTitle = { link = "DiagnosticHint" },
        NotifyDEBUGTitle = { link = "Debug" },
        NotifyTRACETitle = { link = "Comment" },

        -- Dap-UI
        -- DapUIVariable = { link = "Normal" },
        DapUIScope = { link = 'Special' }, -- guifg=#00F1F5"
        DapUIType = { link = 'Type' }, -- guifg=#D484FF"
        -- DapUIValue = { link = "Normal" },
        DapUIModifiedValue = { fg = theme.syn.special1, bold = true }, -- guifg=#00F1F5 gui=bold"
        DapUIDecoration = { fg = theme.ui.float.fg_border }, -- guifg=#00F1F5"
        DapUIThread = { fg = theme.syn.identifier }, --guifg=#A9FF68"
        DapUIStoppedThread = { fg = theme.syn.special1 }, --guifg=#00f1f5"
        -- DapUIFrameName = { link = "Normal"},
        DapUISource = { fg = theme.syn.special2 }, -- guifg=#D484FF"
        DapUILineNumber = { fg = theme.syn.special1 }, -- guifg=#00f1f5"
        DapUIFloatBorder = { fg = theme.ui.float.fg_border }, -- guifg=#00F1F5"
        DapUIWatchesEmpty = { fg = theme.diag.error }, -- guifg=#F70067"
        DapUIWatchesValue = { fg = theme.syn.identifier }, -- guifg=#A9FF68"
        DapUIWatchesError = { fg = theme.diag.error }, --guifg=#F70067"
        DapUIBreakpointsPath = { link = 'Directory' }, --guifg=#00F1F5"
        DapUIBreakpointsInfo = { fg = theme.diag.info }, --guifg=#A9FF68"
        DapUIBreakpointsCurrentLine = { fg = theme.syn.identifier, bold = true }, --guifg=#A9FF68 gui=bold"
        -- DapUIBreakpointsLine = {}, -- DapUILineNumber"
        DapUIBreakpointsDisabledLine = { link = 'Comment' }, --guifg=#424242"
        -- DapUICurrentFrameName = {}, -- DapUIBreakpointsCurrentLine"
        DapUIStepOver = { fg = theme.syn.special1 }, --guifg=#00f1f5"
        DapUIStepInto = { fg = theme.syn.special1 }, --guifg=#00f1f5"
        DapUIStepBack = { fg = theme.syn.special1 }, --guifg=#00f1f5"
        DapUIStepOut = { fg = theme.syn.special1 }, --guifg=#00f1f5"
        DapUIStop = { fg = theme.diag.error }, --guifg=#F70067"
        DapUIPlayPause = { fg = theme.syn.string }, --guifg=#A9FF68"
        DapUIRestart = { fg = theme.syn.string }, --guifg=#A9FF68"
        DapUIUnavailable = { fg = theme.syn.comment }, --guifg=#424242"

        -- Floaterm
        FloatermBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },

        -- NeoVim                         = {},
        healthError = { fg = theme.diag.error },
        healthSuccess = { fg = theme.diag.ok },
        healthWarning = { fg = theme.diag.warning },

        -- Cmp
        CmpDocumentation = { link = "NormalFloat" },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpCompletion = { link = "Pmenu" },
        CmpCompletionSel = { fg = "NONE", bg = theme.ui.pmenu.bg_sel },
        CmpCompletionBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg },
        CmpCompletionThumb = { link = "PmenuThumb" },
        CmpCompletionSbar = { link = "PmenuSbar" },

        CmpItemAbbr = { fg = theme.ui.pmenu.fg },
        CmpItemAbbrDeprecated = { fg = theme.syn.comment, strikethrough = true },

        CmpItemAbbrMatch = { fg = theme.syn.fun },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindDefault = { fg = theme.syn.deprecated },
        CmpItemMenu = { fg = theme.syn.comment },

        CmpItemKindVariable = { fg = theme.ui.fg_dim },

        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },

        CmpItemKindConstructor = { link = "TSConstructor" },

        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },

        CmpItemKindProperty = { link = "TSProperty" },
        CmpItemKindField = { link = "TSField" },
        CmpItemKindEnum = { link = "Identifier" },

        CmpItemKindSnippet = { fg = theme.syn.special1 },

        CmpItemKindText = { link = "TSText" },

        CmpItemKindModule = { link = "TSInclude" },

        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },

        CmpItemKindKeyword = { link = "TSKeyword" },
        CmpItemKindTypeParameter = { link = "Identifier" },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindReference = { link = "TSParameterReference" },
        CmpItemKindEnumMember = { link = "TSField" },

        CmpItemKindValue = { link = "String" },
        -- CmpItemKindUnit = {},
        -- CmpItemKindEvent = {},
        -- CmpItemKindColor = {},

        CmpItemKindCopilot = { link = "String" },

        -- IndentBlankline
        IndentBlanklineChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceCharBlankline = { fg = theme.ui.whitespace },
        IndentBlanklineContextChar = { fg = theme.ui.shade4 },
        IndentBlanklineContextStart = { sp = theme.ui.shade4, underline = true },
    }

    for hl, specs in pairs(config.overrides(colors)) do
        if hlgroups[hl] and not vim.tbl_isempty(specs) then
            hlgroups[hl].link = nil
        end
        hlgroups[hl] = vim.tbl_extend("force", hlgroups[hl] or {}, specs)
    end

    if config.terminalColors then
        setup_terminal_colors(colors.theme.term)
    end

    return hlgroups
end

return M
