local c = require"kanagawa".colors
local config = require("kanagawa").config

local hlgroups = {
    Comment                           = { fg = c.fg_comment, style = config.commentStyle },
    ColorColumn                       = { bg = c.bg_light0 },
    Conceal                           = { fg = c.bg_light3, bg = "NONE", style = "bold" },
    Cursor                            = { fg = c.bg, bg = c.fg },
    lCursor                           = { link = "Cursor" },
    CursorIM                          = { link = "Cursor" },
    CursorLine                        = { bg = c.bg_light1 },
    CursorColumn                      = { link = "CursorLine" },
    Directory                         = { fg = c.fn },
    DiffAdd                           = { fg = "NONE", bg = c.diff.add },
    DiffChange                        = { fg = "NONE", bg = c.diff.change },
    DiffDelete                        = { fg = c.diff.delete, bg = c.diff.delete },
    DiffText                          = { fg = "NONE", bg = c.diff.text },
    EndOfBuffer                       = { fg = c.bg },
    -- TermCursor                     = {},
    -- TermCursorNC                   = {},
    ErrorMsg                          = { fg = c.diag.error, bg = c.bg },
    VertSplit                         = { fg = c.bg_status, bg = c.bg_status, style = "NONE" },
    Folded                            = { fg = c.bg_light3, bg = c.bg_light0 },
    FoldColumn                        = { fg = c.bg_light2, bg = c.bg },
    SignColumn                        = { fg = c.comment, bg = c.bg },
    SignColumnSB                      = { link = "SignColumn" },
    Substitute                        = { fg = c.fg, bg = c.git.removed },
    LineNr                            = { fg = c.bg_light2 },
    CursorLineNr                      = { fg = c.diag.warning, bg = c.bg, style = "bold" },
    MatchParen                        = { fg = c.diag.warning, bg = "NONE", style = "bold" },
    ModeMsg                           = { fg = c.diag.warning, style = "bold", bg = c.bg },
    MsgArea                           = { fg = c.fg, bg = c.bg },
    -- MsgSeparator                   = {},
    MoreMsg                           = { fg = c.diag.info, bg = c.bg, style = "NONE" },
    NonText                           = { fg = c.bg_light2 },
    Normal                            = { fg = c.fg, bg = not config.transparent and c.bg or "NONE" },
    NormalNC                          = { link = "Normal" },
    NormalSB                          = { link = "Normal" },
    NormalFloat                       = { fg = c.fg, bg = c.bg_dark },
    FloatBorder                       = { fg = c.fg_border, bg = "NONE" },
    Pmenu                             = { fg = c.fg, bg = c.bg_menu },
    PmenuSel                          = { fg = "NONE", bg = c.bg_menu_sel },
    PmenuSbar                         = { link = "Pmenu" },
    PmenuThumb                        = { bg = c.bg_search },
    Question                          = { link = "MoreMsg" },
    QuickFixLine                      = { link = "CursorLine" },
    Search                            = { fg = c.fg, bg = c.bg_search },
    IncSearch                         = { fg = c.bg_visual, bg = c.diag.warning, style = "NONE" },
    SpecialKey                        = { link = "NonText" },
    SpellBad                          = { style = "undercurl", guisp = c.diag.error },
    SpellCap                          = { style = "undercurl", guisp = c.diag.warning },
    SpellLocal                        = { style = "undercurl", guisp = c.diag.warning },
    SpellRare                         = { style = "undercurl", guisp = c.diag.warning },
    StatusLine                        = { fg = c.fg_dark, bg = c.bg_status, style = "NONE" },
    StatusLineNC                      = { fg = c.comment, bg = c.bg_status, style = "NONE" },
    TabLine                           = { bg = c.bg_dark, fg = c.bg_light3, style = "NONE" },
    TabLineFill                       = { bg = c.bg, style = "NONE" },
    TabLineSel                        = { fg = c.fg_dark, bg = c.bg_light1, style = "NONE" },
    Title                             = { fg = c.fn, style = "bold" },
    Visual                            = { bg = c.bg_visual },
    VisualNOS                         = { link = "Visual" },
    WarningMsg                        = { bg = c.diag.warn, fg = c.fg_dark },
    Whitespace                        = { fg = c.bg_light2 },
    WildMenu                          = { link = "Pmenu" },

    Constant                          = { fg = c.co },
    String                            = { fg = c.st },
    Character                         = { link = "String" },
    Number                            = { fg = c.nu },
    Boolean                           = { fg = c.co, style = "bold" },
    Float                             = { link = "Number" },

    Identifier                        = { fg = c.id },
    Function                          = { fg = c.fn, style = config.functionStyle },
    Statement                         = { fg = c.sm, style = config.statementStyle },
    -- Conditional                    = {},
    -- Repeat                         = {},
    -- Label                          = { link = 'Statement' }, --TODO: check default
    Operator                          = { fg = c.op },
    Keyword                           = { fg = c.kw, style = config.keywordStyle },
    Exception                         = { fg = c.sp2 },

    PreProc                           = { fg = c.pp },
    -- Include                        = {},
    -- Define                         = {},
    -- Macro                          = {},
    -- PreCondit                      = {},

    Type                              = { fg = c.ty, style = config.typeStyle },
    -- StorageClass                   = {},
    -- Structure                      = {},
    -- Typedef                        = {},

    Special                           = { fg = c.sp },
    -- SpecialChar                    = {},
    -- Tag                            = {},
    -- Delimiter                      = { fg = c.br},
    -- SpecialComment                 = {},
    -- Debug                          = {},

    Underlined                        = { fg = c.sp, style = "underline" },
    Bold                              = { style = "bold" },
    Italic                            = { style = "italic" },

    Ignore                            = { link = 'NonText'},

    Error                             = { fg = c.diag.error, bg = c.bg },
    Todo                              = { fg = c.fg_reverse, bg = c.diag.info, style = "bold" },

    qfLineNr                          = { link = "lineNr" },
    qfFileName                        = { link = "Directory" },

    htmlH1                            = {},
    htmlH2                            = {},

    -- mkdHeading                     = {},
    -- mkdCode                        = {},
    mkdCodeDelimiter                  = {},
    mkdCodeStart                      = {},
    mkdCodeEnd                        = {},
    -- mkdLink                        = {},

    markdownHeadingDelimiter          = {},
    markdownCode                      = {},
    markdownCodeBlock                 = {},
    markdownH1                        = {},
    markdownH2                        = {},
    markdownLinkText                  = {},

    debugPC                           = { link = "CursorLine" },
    debugBreakpoint                   = { fg = c.sp },

    LspReferenceText                  = { bg = c.diff.text },
    LspReferenceRead                  = { link = "LspReferenceText" },
    LspReferenceWrite                 = { link = "LspReferenceText" },

    DiagnosticError                   = { fg = c.diag.error },
    DiagnosticWarn                    = { fg = c.diag.warning },
    DiagnosticInfo                    = { fg = c.diag.info },
    DiagnosticHint                    = { fg = c.diag.hint },

    DiagnosticSignError               = { link = "DiagnosticError" },
    DiagnosticSignWarn                = { link = "DiagnosticWarn" },
    DiagnosticSignInfo                = { link = "DiagnosticInfo" },
    DiagnosticSignHint                = { link = "DiagnosticHint" },

    DiagnosticVirtualTextError        = { link = "DiagnosticError" },
    DiagnosticVirtualTextWarn         = { link = "DiagnosticWarn" },
    DiagnosticVirtualTextInfo         = { link = "DiagnosticInfo" },
    DiagnosticVirtualTextHint         = { link = "DiagnosticHint" },

    DiagnosticUnderlineError          = { style = "undercurl", guisp = c.diag.error },
    DiagnosticUnderlineWarn           = { style = "undercurl", guisp = c.diag.warning },
    DiagnosticUnderlineInfo           = { style = "undercurl", guisp = c.diag.info },
    DiagnosticUnderlineHint           = { style = "undercurl", guisp = c.diag.hint },

    LspSignatureActiveParameter       = { fg = c.diag.warning },
    LspCodeLens                       = { fg = c.fg_comment },

    -- ALEErrorSign                   = {},
    -- ALEWarningSign                 = {},

    -- TSAnnotation                   = {},
    TSAttribute                       = { link = "Constant" },
    -- TSBoolean                      = {},
    -- TSCharacter                    = {},
    -- TSComment                      = {},
    -- TSNote                         = { fg = c.fg_dark, bg = c.diag.hint, style = 'nocombine,bold'}, -- links to SpecialComment -> Special
    TSWarning                         = { link = "Todo" }, --default
    TSDanger                          = { link = "WarningMsg" }, --default
    TSConstructor                     = { fg = c.kw }, -- Function/Special/Statement/Keyword
    -- TSConditional                  = {},
    -- TSConstant                     = {},
    -- TSConstBuiltin                 = {},
    -- TSConstMacro                   = {},
    TSError                           = { fg = c.diag.error },
    -- TSException                    = { link = 'Exception' }, -- default, -> statement
    TSException                       = { fg = config.specialException and c.sp3 or c.sm, style = config.statementStyle },
    TSField                           = { link = "Identifier" }, -- default
    -- TSField                        = { link = 'Variable'},
    -- TSFloat                        = {},
    -- TSFunction                     = {},
    -- TSFuncBuiltin                  = {link = "Function" },
    -- TSFuncMacro                    = {},
    -- TSInclude                      = {},
    TSKeyword                         = { link = "Keyword" },
    -- TSKeywordFunction              = { link = "Keyword" }, -- default
    -- TSKeywordFunction              = { link = "Function" },
    TSKeywordReturn                   = { fg = config.specialReturn and c.sp3 or c.kw, style = config.keywordStyle },
    TSLabel                           = { link = "Label" },
    TSMethod                          = { link = "Function" },
    -- TSNamespace                    = {},
    -- TSNone                         = {},
    -- TSNumber                       = {},
    TSOperator                        = { link = "Operator" },
    TSKeywordOperator                 = { fg = c.op, style = 'bold' },
    TSParameter                       = { link = "Identifier" }, -- default
    -- TSParameterReference           = {},
    TSProperty                        = { link = "Identifier" }, -- default
    -- TSPunctDelimiter               = { fg = c.op },
    TSPunctDelimiter                  = { fg = c.br },
    TSPunctBracket                    = { fg = c.br },
    TSPunctSpecial                    = { fg = c.br },
    -- TSRepeat                       = {},
    -- TSString                       = {},
    TSStringRegex                     = { fg = c.re },
    TSStringEscape                    = { fg = c.re, style = "bold" },
    -- TSSymbol                       = {},
    -- TSType                         = {},
    -- TSTypeBuiltin                  = {},
    TSVariable                        = { fg = c.fg },
    TSVariableBuiltin                 = { fg = c.sp2, style = config.variablebuiltinStyle },

    -- TSTag                          = {},
    -- TSTagDelimiter                 = {},
    -- TSText                         = {},
    -- TSTextReference                   = { fg = c.sp2 },
    -- TSEmphasis                     = {},
    -- TSUnderline                    = {},
    -- TSStrike                       = {},
    -- TSTitle                        = {},
    -- TSLiteral                      = {},
    -- TSURI                          = {},

    -- Lua
    -- luaTSProperty                  = {},

    -- LspTrouble
    -- LspTroubleText                 = {},
    -- LspTroubleCount                = {},
    -- LspTroubleNormal               = {},

    -- Illuminate
    -- illuminatedWord                = {},
    -- illuminatedCurWord             = {},

    -- Git
    diffAdded                         = { fg = c.git.added },
    diffRemoved                       = { fg = c.git.removed },
    diffDeleted                       = { fg = c.git.removed },
    diffChanged                       = { fg = c.git.changed },
    diffOldFile                       = { fg = c.git.removed },
    diffNewFile                       = { fg = c.git.added },
    -- diffFile                       = { fg = c.steelGray },
    -- diffLine                       = { fg = c.steelGray },
    -- diffIndexLine                  = { link = 'Identifier' },

    -- Neogit
    -- NeogitBranch                   = {},
    -- NeogitRemote                   = {},
    -- NeogitHunkHeader               = {},
    -- NeogitHunkHeaderHighlight      = {},
    -- NeogitDiffContextHighlight     = {},
    -- NeogitDiffDeleteHighlight      = {},
    -- NeogitDiffAddHighlight         = {},

    -- GitGutter
    -- GitGutterAdd                   = {},
    -- GitGutterChange                = {},
    -- GitGutterDelete                = {},

    -- GitSigns
    GitSignsAdd                       = { link = "diffAdded" },
    GitSignsChange                    = { link = "diffChanged" },
    GitSignsDelete                    = { link = "diffDeleted" },
    GitSignsDeleteLn                  = { fg = 'NONE', bg = c.diff.delete },

    -- Telescope                      = {},
    TelescopeBorder                   = { link = "FloatBorder" },

    -- NvimTree                       = {},
    NvimTreeNormal                    = { fg = c.fg, bg = c.bg },
    -- NvimTreeNormalNC               = {},
    NvimTreeRootFolder                = { fg = c.id, style = "bold" },
    NvimTreeGitDirty                  = { fg = c.git.changed },
    NvimTreeGitNew                    = { fg = c.git.added},
    NvimTreeGitDeleted                = { fg = c.git.removed},
    NvimTreeSpecialFile               = { fg = c.sp },
    -- NvimTreeIndentMarker           = {},
    NvimTreeImageFile                 = { fg = c.sp2 },
    NvimTreeSymlink                   = { link = "Type" },
    NvimTreeFolderName                = { link = "Directory" },
    NvimTreeExecFile                  = { fg = c.springGreen, style = "bold" },
    NvimTreeGitStaged                 = { fg = c.git.added },
    NvimTreeOpenedFile                = { fg = c.sp, style = 'italic'},

    -- Fern
    -- FernBranchText                 = {},

    -- glyph palette                  = {},
    -- GlyphPalette1                  = {},
    -- GlyphPalette2                  = {},
    -- GlyphPalette3                  = {},
    -- GlyphPalette4                  = {},
    -- GlyphPalette6                  = {},
    -- GlyphPalette7                  = {},
    -- GlyphPalette9                  = {},

    -- Dashboard
    DashboardShortCut                 = { fg = c.sp },
    DashboardHeader                   = { fg = c.git.removed },
    DashboardCenter                   = { fg = c.id },
    DashboardFooter                   = { fg = c.fn },

    -- WhichKey                       = {},
    -- WhichKeyGroup                  = {},
    -- WhichKeyDesc                   = {},
    -- WhichKeySeperator              = {},
    -- WhichKeySeparator              = {},
    -- WhichKeyFloat                  = {},
    -- WhichKeyValue                  = {},

    -- LspSaga
    -- DiagnosticWarning              = {},
    -- DiagnosticInformation          = {},

    -- LspFloatWinNormal              = {},
    -- LspFloatWinBorder              = {},
    -- LspSagaBorderTitle             = {},
    -- LspSagaHoverBorder             = {},
    -- LspSagaRenameBorder            = {},
    -- LspSagaDefPreviewBorder        = {},
    -- LspSagaCodeActionBorder        = {},
    -- LspSagaFinderSelection         = {},
    -- LspSagaCodeActionTitle         = {},
    -- LspSagaCodeActionContent       = {},
    -- LspSagaSignatureHelpBorder     = {},
    -- ReferencesCount                = {},
    -- DefinitionCount                = {},
    -- DefinitionIcon                 = {},
    -- ReferencesIcon                 = {},
    -- TargetWord                     = {},

    -- NeoVim                         = {},
    healthError                       = { fg = c.diag.error },
    healthSuccess                     = { fg = c.springGreen },
    healthWarning                     = { fg = c.diag.warning },

    -- BufferLine
    -- BufferLineIndicatorSelected    = {},
    -- BufferLineFill                 = {},

    -- Barbar                         = {},
    -- BufferCurrent                  = {},
    -- BufferCurrentIndex             = {},
    -- BufferCurrentMod               = {},
    -- BufferCurrentSign              = {},
    -- BufferCurrentTarget            = {},
    -- BufferVisible                  = {},
    -- BufferVisibleIndex             = {},
    -- BufferVisibleMod               = {},
    -- BufferVisibleSign              = {},
    -- BufferVisibleTarget            = {},
    -- BufferInactive                 = {},
    -- BufferInactiveIndex            = {},
    -- BufferInactiveMod              = {},
    -- BufferInactiveSign             = {},
    -- BufferInactiveTarget           = {},
    -- BufferTabpages                 = {},
    -- BufferTabpage                  = {},

    -- Sneak
    -- Sneak                          = {},
    -- SneakScope                     = {},

    -- Hop
    -- HopNextKey                     = {},
    -- HopNextKey1                    = {},
    -- HopNextKey2                    = {},
    -- HopUnmatched                   = {},

    -- LightspeedGreyWash             = {},

    -- Cmp
    CmpDocumentation                  = { fg = c.fg, bg = c.bg_popup },
    CmpDocumentationBorder            = { fg = c.fg_border, bg = c.bg },

    CmpItemAbbr                       = { fg = c.fg, bg = "NONE" },
    CmpItemAbbrDeprecated             = { fg = c.comment, bg = "NONE", style = "strikethrough" },

    CmpItemAbbrMatch                  = { fg = c.fn, bg = "NONE" },
    CmpItemAbbrMatchFuzzy             = { link = "CmpItemAbbrMatch" },

    CmpItemKindDefault                = { fg = c.dep, bg = "NONE" },
    CmpItemMenu                       = { fg = c.fg_comment, bg = "NONE" },

    CmpItemKindVariable               = { link = "TSVariable" },

    CmpItemKindFunction               = { link = "Function" },
    CmpItemKindMethod                 = { link = "Function" },

    CmpItemKindConstructor            = { link = "TSConstructor" },

    CmpItemKindClass                  = { link = "Type" },
    CmpItemKindInterface              = { link = "Type" },
    CmpItemKindStruct                 = { link = "Type" },

    CmpItemKindProperty               = { link = "TSProperty" },
    CmpItemKindField                  = { link = "TSField" },
    CmpItemKindEnum                   = { link = "Identifier" },

    CmpItemKindSnippet                = { fg = c.sp, bg = "NONE" },

    CmpItemKindText                   = { link = "TSText" },

    CmpItemKindModule                 = { link = "TSInclude" },

    CmpItemKindFile                   = { link = "Directory" },
    CmpItemKindFolder                 = { link = "Directory" },

    CmpItemKindKeyword                = { link = "TSKeyword" },
    CmpItemKindTypeParameter          = { link = "Identifier" },
    CmpItemKindConstant               = { link = "Constant" },
    CmpItemKindOperator               = { link = "Operator" },
    CmpItemKindReference              = { link = "TSParameterReference" },
    CmpItemKindEnumMember             = { link = "TSField" },

    CmpItemKindValue                  = { link = "String" },
    CmpItemKindUnit                   = {},
    CmpItemKindEvent                  = {},
    CmpItemKindColor                  = {},

    -- IndentBlankline
    IndentBlanklineChar               = { fg = c.bg_light2 },
    IndentBlanklineSpaceChar          = { fg = c.bg_light2 },
    IndentBlanklineSpaceCharBlankline = { fg = c.bg_light2 },
    IndentBlanklineContextChar        = { fg = c.bg_light3 },
    IndentBlanklineContextStart       = { guisp = c.bg_light3, style = "underline" },
}

return hlgroups
