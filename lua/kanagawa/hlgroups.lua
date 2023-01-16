local M = {}
local c = require("kanagawa.color")

local function setup_terminal_colors(colors)
    vim.g.terminal_color_0 = "#090618" -- black
    vim.g.terminal_color_1 = colors.autumnRed -- red
    vim.g.terminal_color_2 = colors.autumnGreen -- green
    vim.g.terminal_color_3 = colors.boatYellow2 -- yellow
    vim.g.terminal_color_4 = colors.crystalBlue -- blue
    vim.g.terminal_color_5 = colors.oniViolet -- magenta
    vim.g.terminal_color_6 = colors.waveAqua1 -- cyan
    vim.g.terminal_color_7 = colors.oldWhite -- white
    vim.g.terminal_color_8 = colors.fujiGray -- bright black
    vim.g.terminal_color_9 = colors.samuraiRed -- bright red
    vim.g.terminal_color_10 = colors.springGreen -- bright green
    vim.g.terminal_color_11 = colors.carpYellow -- bright yellow
    vim.g.terminal_color_12 = colors.springBlue -- bright blue
    vim.g.terminal_color_13 = colors.springViolet1 -- bright magenta
    vim.g.terminal_color_14 = colors.waveAqua2 -- bright cyan
    vim.g.terminal_color_15 = colors.fujiWhite -- bright white
    vim.g.terminal_color_16 = colors.surimiOrange -- extended color 1
    vim.g.terminal_color_17 = colors.peachRed -- extended color 2
end

--- generate highlights table
---@param colors KanagawaColors
---@param config? table config options (optional)
function M.setup(colors, config)
    config = config or require("kanagawa").config

    local theme = colors.theme
    local palette = colors.palette

    local hlgroups = {
        Comment = vim.tbl_extend("force", { fg = theme.fg_comment }, config.commentStyle),
        ColorColumn = { bg = theme.bg_light0 },
        Conceal = { fg = theme.bg_light3, bold = true },
        Cursor = { fg = theme.bg, bg = theme.fg },
        lCursor = { link = "Cursor" },
        CursorIM = { link = "Cursor" },
        CursorLine = { bg = theme.bg_light1 },
        CursorColumn = { link = "CursorLine" },
        Directory = { fg = theme.fn },
        DiffAdd = { bg = theme.diff.add },
        DiffChange = { bg = theme.diff.change },
        DiffDelete = { fg = theme.git.removed, bg = theme.diff.delete },
        DiffText = { bg = theme.diff.text },
        EndOfBuffer = { fg = theme.bg },
        -- TermCursor = {},
        -- TermCursorNC = {},
        ErrorMsg = { fg = theme.diag.error },
        WinSeparator = {
            fg = tostring(c(theme.bg_dark):lighten(0.6)),
            bg = config.dimInactive and theme.bg_dim or "NONE",
        },
        VertSplit = { link = "WinSeparator" },
        Folded = { fg = theme.bg_light3, bg = theme.bg_light0 },
        FoldColumn = { fg = theme.bg_light2 },
        SignColumn = { fg = theme.bg_light2 },
        SignColumnSB = { link = "SignColumn" },
        Substitute = { fg = theme.fg, bg = theme.git.removed },
        LineNr = { fg = theme.bg_light2 },
        CursorLineNr = { fg = theme.diag.warning, bold = true },
        MatchParen = { fg = theme.diag.warning, bold = true },
        ModeMsg = { fg = theme.diag.warning, bold = true },
        MsgArea = { fg = theme.fg_dark },
        -- MsgSeparator = {},
        MoreMsg = { fg = theme.diag.info, bg = theme.bg },
        NonText = { fg = theme.bg_light2 },
        Normal = { fg = theme.fg, bg = not config.transparent and theme.bg or "NONE" },
        NormalNC = config.dimInactive and { fg = theme.fg_dark, bg = theme.bg_dim } or { link = "Normal" },
        NormalSB = { link = "Normal" },
        NormalFloat = { fg = theme.fg_dark, bg = theme.bg_dark },
        FloatBorder = { fg = theme.fg_border, bg = theme.bg_dark },
        FloatTitle = { fg = theme.bg_light3, bg = theme.bg_dark, bold = true },
        Pmenu = { fg = theme.fg_menu, bg = theme.bg_menu },
        PmenuSel = { fg = "NONE", bg = theme.bg_menu_sel },
        PmenuSbar = { link = "Pmenu" },
        PmenuThumb = { bg = theme.bg_search },
        Question = { link = "MoreMsg" },
        QuickFixLine = { link = "CursorLine" },
        Search = { fg = theme.fg, bg = theme.bg_search },
        CurSearch = {
            link = "Search", --[[ IncSearch ]]
        },
        IncSearch = { fg = theme.bg_visual, bg = theme.diag.warning },
        SpecialKey = { link = "NonText" },
        SpellBad = { undercurl = true, sp = theme.diag.error },
        SpellCap = { undercurl = true, sp = theme.diag.warning },
        SpellLocal = { undercurl = true, sp = theme.diag.warning },
        SpellRare = { undercurl = true, sp = theme.diag.warning },
        StatusLine = { fg = theme.fg_dark, bg = theme.bg_status },
        StatusLineNC = { fg = theme.fg_comment, bg = theme.bg_status },
        Winbar = { fg = theme.fg_dark, bg = "NONE" },
        WinbarNC = { fg = theme.fg_dark, bg = config.dimInactive and theme.bg_dim or "NONE" },
        TabLine = { bg = theme.bg_dark, fg = theme.bg_light3 },
        TabLineFill = { bg = theme.bg },
        TabLineSel = { fg = theme.fg_dark, bg = theme.bg_light1 },
        Title = { fg = theme.fn, bold = true },
        Visual = { bg = theme.bg_visual },
        VisualNOS = { link = "Visual" },
        WarningMsg = { fg = theme.diag.warning },
        Whitespace = { fg = theme.bg_light2 },
        WildMenu = { link = "Pmenu" },

        Constant = { fg = theme.co },
        String = { fg = theme.st },
        Character = { link = "String" },
        Number = { fg = theme.nu },
        Boolean = { fg = theme.co, bold = true },
        Float = { link = "Number" },

        Identifier = { fg = theme.id },
        Function = vim.tbl_extend("force", { fg = theme.fn }, config.functionStyle),
        Method = { link = "Function" },
        Statement = vim.tbl_extend("force", { fg = theme.sm }, config.statementStyle),
        -- Conditional = {},
        -- Repeat = {},
        -- Label = {},
        Operator = { fg = theme.op },
        Keyword = vim.tbl_extend("force", { fg = theme.kw }, config.keywordStyle),
        Exception = { fg = theme.sp2 },

        PreProc = { fg = theme.pp },
        -- Include = {},
        -- Define = {},
        -- Macro = {},
        -- PreCondit = {},

        Type = vim.tbl_extend("force", { fg = theme.ty }, config.typeStyle),
        Struct = { link = "Type" },
        -- StorageClass = {},
        -- Structure = {},
        -- Typedef = {},

        Special = { fg = theme.sp },
        -- SpecialChar = {},
        -- Tag = {},
        -- Delimiter = { fg = c.br},
        -- SpecialComment = {},
        -- Debug = {},

        Underlined = { fg = theme.sp, underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        Ignore = { link = "NonText" },

        Error = { fg = theme.diag.error },
        Todo = { fg = theme.fg_reverse, bg = theme.diag.info, bold = true },

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
        markdownCode = { fg = theme.st },
        markdownCodeBlock = { fg = theme.st },
        markdownEscape = { fg = "NONE" },
        -- markdownH1 = {},
        -- markdownH2 = {},
        -- markdownLinkText = {},

        debugPC = { bg = theme.diff.delete },
        debugBreakpoint = { fg = theme.sp },

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
        LspCodeLens = { fg = theme.fg_comment },

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
        ["@constructor"] = { fg = theme.kw }, -- Function/Special/Statement/Keyword
        -- TSConditional = {},
        -- TSConstant = {},
        -- TSConstBuiltin = {},
        -- TSConstMacro = {},
        -- TSError = { fg = theme.diag.error },
        -- TSException = { link = 'Exception' }, -- default, -> statement
        ["@exception"] = vim.tbl_extend(
            "force",
            { fg = config.specialException and theme.sp3 or theme.sm },
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
            { fg = config.specialReturn and theme.sp3 or theme.kw },
            config.keywordStyle
        ),
        ["@label"] = { link = "Label" },
        ["@method"] = { link = "Function" },
        -- TSNamespace = {},
        -- TSNone = {},
        -- TSNumber = {},
        ["@operator"] = { link = "Operator" },
        ["@keyword.operator"] = { fg = theme.op, bold = true },
        ["@namespace"] = { link = "Identifier" }, -- default
        -- TSParameterReference = {},
        ["@property"] = { link = "Identifier" }, -- default
        -- TSPunctDelimiter = { fg = c.op },
        ["@punctuation.delimiter"] = { fg = theme.br },
        ["@punctuation.bracket"] = { fg = theme.br },
        ["@punctuation.Special"] = { fg = theme.br },
        -- TSRepeat = {},
        -- TSString = {},
        ["@string.regex"] = { fg = theme.re },
        ["@string.escape"] = { fg = theme.re, bold = true },
        ["@symbol"] = { fg = theme.id },
        -- TSType = {},
        -- TSTypeBuiltin = {},
        ["@variable"] = { fg = theme.fg },
        ["@variable.builtin"] = vim.tbl_extend("force", { fg = theme.sp2 }, config.variablebuiltinStyle),

        -- TSTag = {},
        -- TSTagDelimiter = {},
        ["@tag"] = { link = "Tag" },
        ["@tag.delimiter"] = { fg = theme.br },
        ["@tag.attribute"] = { fg = theme.id },
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

        -- Git
        diffAdded = { fg = theme.git.added },
        diffRemoved = { fg = theme.git.removed },
        diffDeleted = { fg = theme.git.removed },
        diffChanged = { fg = theme.git.changed },
        diffOldFile = { fg = theme.git.removed },
        diffNewFile = { fg = theme.git.added },
        -- diffFile = { fg = c.steelGray },
        -- diffLine = { fg = c.steelGray },
        -- diffIndexLine = { link = 'Identifier' },

        -- Neogit
        -- NeogitBranch = {},
        -- NeogitRemote = {},
        NeogitDiffDelete = { fg = theme.git.removed, bg = theme.diff.delete },
        NeogitDiffAdd = { fg = theme.git.added, bg = theme.diff.add },
        NeogitHunkHeader = { fg = theme.id },
        NeogitDiffContextHighlight = { bg = theme.diff.change },

        -- GitGutter
        -- GitGutterAdd = {},
        -- GitGutterChange = {},
        -- GitGutterDelete = {},

        -- GitSigns
        GitSignsAdd = { link = "diffAdded" },
        GitSignsChange = { link = "diffChanged" },
        GitSignsDelete = { link = "diffDeleted" },
        GitSignsDeleteLn = { bg = theme.diff.delete },

        -- Telescope                      = {},
        TelescopeBorder = { fg = theme.fg_border, bg = theme.bg },
        TelescopeResultsClass = { link = "TSType" },
        TelescopeResultsStruct = { link = "TSType" },
        TelescopeResultsVariable = { link = "TSVariable" },

        -- NvimTree                       = {},
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NormalNC" },
        NvimTreeRootFolder = { fg = theme.id, bold = true },
        NvimTreeGitDirty = { fg = theme.git.changed },
        NvimTreeGitNew = { fg = theme.git.added },
        NvimTreeGitDeleted = { fg = theme.git.removed },
        NvimTreeSpecialFile = { fg = theme.sp },
        -- NvimTreeIndentMarker           = {},
        NvimTreeImageFile = { fg = theme.sp2 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = theme.st, bold = true },
        NvimTreeGitStaged = { fg = theme.git.added },
        NvimTreeOpenedFile = { fg = theme.sp, italic = true },
        NvimTreeWinSeparator = { link = "WinSeparator" },

        -- Dashboard
        DashboardShortCut = { fg = theme.sp },
        DashboardHeader = { fg = theme.git.removed },
        DashboardCenter = { fg = theme.id },
        DashboardFooter = { fg = theme.fn },

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
        DapUIModifiedValue = { fg = theme.sp, bold = true }, -- guifg=#00F1F5 gui=bold"
        DapUIDecoration = { fg = theme.fg_border }, -- guifg=#00F1F5"
        DapUIThread = { fg = theme.id }, --guifg=#A9FF68"
        DapUIStoppedThread = { fg = theme.sp }, --guifg=#00f1f5"
        -- DapUIFrameName = { link = "Normal"},
        DapUISource = { fg = theme.sp2 }, -- guifg=#D484FF"
        DapUILineNumber = { fg = theme.sp }, -- guifg=#00f1f5"
        DapUIFloatBorder = { fg = theme.fg_border }, -- guifg=#00F1F5"
        DapUIWatchesEmpty = { fg = theme.diag.error }, -- guifg=#F70067"
        DapUIWatchesValue = { fg = theme.id }, -- guifg=#A9FF68"
        DapUIWatchesError = { fg = theme.diag.error }, --guifg=#F70067"
        DapUIBreakpointsPath = { link = 'Directory' }, --guifg=#00F1F5"
        DapUIBreakpointsInfo = { fg = theme.diag.info }, --guifg=#A9FF68"
        DapUIBreakpointsCurrentLine = { fg = theme.id, bold = true }, --guifg=#A9FF68 gui=bold"
        -- DapUIBreakpointsLine = {}, -- DapUILineNumber"
        DapUIBreakpointsDisabledLine = { link = 'Comment' }, --guifg=#424242"
        -- DapUICurrentFrameName = {}, -- DapUIBreakpointsCurrentLine"
        DapUIStepOver = { fg = theme.sp }, --guifg=#00f1f5"
        DapUIStepInto = { fg = theme.sp }, --guifg=#00f1f5"
        DapUIStepBack = { fg = theme.sp }, --guifg=#00f1f5"
        DapUIStepOut = { fg = theme.sp }, --guifg=#00f1f5"
        DapUIStop = { fg = theme.diag.error }, --guifg=#F70067"
        DapUIPlayPause = { fg = theme.st }, --guifg=#A9FF68"
        DapUIRestart = { fg = theme.st }, --guifg=#A9FF68"
        DapUIUnavailable = { fg = theme.fg_comment }, --guifg=#424242"

        -- Floaterm
        FloatermBorder = { fg = theme.fg_border, bg = theme.bg },

        -- NeoVim                         = {},
        healthError = { fg = theme.diag.error },
        healthSuccess = { fg = theme.st },
        healthWarning = { fg = theme.diag.warning },

        -- Cmp
        CmpDocumentation = { link = "NormalFloat" },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpCompletion = { link = "Pmenu" },
        CmpCompletionSel = { fg = "NONE", bg = theme.bg_menu_sel },
        CmpCompletionBorder = { fg = theme.bg_search, bg = theme.bg_menu },
        CmpCompletionThumb = { link = "PmenuThumb" },
        CmpCompletionSbar = { link = "PmenuSbar" },

        CmpItemAbbr = { fg = theme.fg_menu },
        CmpItemAbbrDeprecated = { fg = theme.fg_comment, strikethrough = true },

        CmpItemAbbrMatch = { fg = theme.fn },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },

        CmpItemKindDefault = { fg = theme.dep },
        CmpItemMenu = { fg = theme.fg_comment },

        CmpItemKindVariable = { fg = theme.fg_dark },

        CmpItemKindFunction = { link = "Function" },
        CmpItemKindMethod = { link = "Function" },

        CmpItemKindConstructor = { link = "TSConstructor" },

        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },

        CmpItemKindProperty = { link = "TSProperty" },
        CmpItemKindField = { link = "TSField" },
        CmpItemKindEnum = { link = "Identifier" },

        CmpItemKindSnippet = { fg = theme.sp },

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
        IndentBlanklineChar = { fg = theme.bg_light2 },
        IndentBlanklineSpaceChar = { fg = theme.bg_light2 },
        IndentBlanklineSpaceCharBlankline = { fg = theme.bg_light2 },
        IndentBlanklineContextChar = { fg = theme.bg_light3 },
        IndentBlanklineContextStart = { sp = theme.bg_light3, underline = true },
    }

    for hl, specs in pairs(config.overrides(colors)) do
        if hlgroups[hl] and not vim.tbl_isempty(specs) then
            hlgroups[hl].link = nil
        end
        hlgroups[hl] = vim.tbl_extend("force", hlgroups[hl] or {}, specs)
    end

    if config.terminalColors then
        setup_terminal_colors(colors)
    end

    return hlgroups
end

return M
