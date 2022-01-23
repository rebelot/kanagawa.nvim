local M = {}

--- generate highlights table
-- @param colors color (theme) color table created by require("kanagawa.colors").setup()
-- @param config config options (optional)
function M.setup(colors, config)
    config = vim.tbl_extend("force", require("kanagawa").config, config or {})

    local hlgroups = {
        Comment                           = { fg = colors.fg_comment, style = config.commentStyle },
        ColorColumn                       = { bg = colors.bg_light0 },
        Conceal                           = { fg = colors.bg_light3, bg = "NONE", style = "bold" },
        Cursor                            = { fg = colors.bg, bg = colors.fg },
        lCursor                           = { link = "Cursor" },
        CursorIM                          = { link = "Cursor" },
        CursorLine                        = { bg = colors.bg_light1 },
        CursorColumn                      = { link = "CursorLine" },
        Directory                         = { fg = colors.fn },
        DiffAdd                           = { fg = "NONE", bg = colors.diff.add },
        DiffChange                        = { fg = "NONE", bg = colors.diff.change },
        DiffDelete                        = { fg = colors.git.removed, bg = colors.diff.delete, style = 'none' },
        DiffText                          = { fg = "NONE", bg = colors.diff.text },
        EndOfBuffer                       = { fg = colors.bg },
        -- TermCursor                     = {},
        -- TermCursorNC                   = {},
        ErrorMsg                          = { fg = colors.diag.error, bg = "NONE" },
        VertSplit                         = { fg = colors.bg_status, bg = colors.bg_status, style = "NONE" },
        Folded                            = { fg = colors.bg_light3, bg = colors.bg_light0 },
        FoldColumn                        = { fg = colors.bg_light2, bg = "NONE" },
        SignColumn                        = { fg = colors.bg_light2, bg = "NONE" },
        SignColumnSB                      = { link = "SignColumn" },
        Substitute                        = { fg = colors.fg, bg = colors.git.removed },
        LineNr                            = { fg = colors.bg_light2 },
        CursorLineNr                      = { fg = colors.diag.warning, bg = "NONE", style = "bold" },
        MatchParen                        = { fg = colors.diag.warning, bg = "NONE", style = "bold" },
        ModeMsg                           = { fg = colors.diag.warning, style = "bold", bg = "NONE" },
        MsgArea                           = { fg = colors.fg_dark, bg = "NONE" },
        -- MsgSeparator                   = {},
        MoreMsg                           = { fg = colors.diag.info, bg = colors.bg, style = "NONE" },
        NonText                           = { fg = colors.bg_light2 },
        Normal                            = { fg = colors.fg, bg = not config.transparent and colors.bg or "NONE" },
        NormalNC                          = config.dimInactive and { fg = colors.fg_dark, bg = colors.bg_dim } or { link = "Normal" },
        NormalSB                          = { link = "Normal" },
        NormalFloat                       = { fg = colors.fg, bg = colors.bg_dark },
        FloatBorder                       = { fg = colors.fg_border, bg = "NONE" },
        Pmenu                             = { fg = colors.fg, bg = colors.bg_menu },
        PmenuSel                          = { fg = "NONE", bg = colors.bg_menu_sel },
        PmenuSbar                         = { link = "Pmenu" },
        PmenuThumb                        = { bg = colors.bg_search },
        Question                          = { link = "MoreMsg" },
        QuickFixLine                      = { link = "CursorLine" },
        Search                            = { fg = colors.fg, bg = colors.bg_search },
        IncSearch                         = { fg = colors.bg_visual, bg = colors.diag.warning, style = "NONE" },
        SpecialKey                        = { link = "NonText" },
        SpellBad                          = { style = "undercurl", guisp = colors.diag.error },
        SpellCap                          = { style = "undercurl", guisp = colors.diag.warning },
        SpellLocal                        = { style = "undercurl", guisp = colors.diag.warning },
        SpellRare                         = { style = "undercurl", guisp = colors.diag.warning },
        StatusLine                        = { fg = colors.fg_dark, bg = colors.bg_status, style = "NONE" },
        StatusLineNC                      = { fg = colors.fg_comment, bg = colors.bg_status, style = "NONE" },
        TabLine                           = { bg = colors.bg_dark, fg = colors.bg_light3, style = "NONE" },
        TabLineFill                       = { bg = colors.bg, style = "NONE" },
        TabLineSel                        = { fg = colors.fg_dark, bg = colors.bg_light1, style = "NONE" },
        Title                             = { fg = colors.fn, style = "bold" },
        Visual                            = { bg = colors.bg_visual },
        VisualNOS                         = { link = "Visual" },
        WarningMsg                        = { fg = colors.diag.warning, bg='NONE'},
        Whitespace                        = { fg = colors.bg_light2 },
        WildMenu                          = { link = "Pmenu" },

        Constant                          = { fg = colors.co },
        String                            = { fg = colors.st },
        Character                         = { link = "String" },
        Number                            = { fg = colors.nu },
        Boolean                           = { fg = colors.co, style = "bold" },
        Float                             = { link = "Number" },

        Identifier                        = { fg = colors.id },
        Function                          = { fg = colors.fn, style = config.functionStyle },
        Statement                         = { fg = colors.sm, style = config.statementStyle },
        -- Conditional                    = {},
        -- Repeat                         = {},
        -- Label                          = { link = 'Statement' }, --TODO: check default
        Operator                          = { fg = colors.op },
        Keyword                           = { fg = colors.kw, style = config.keywordStyle },
        Exception                         = { fg = colors.sp2 },

        PreProc                           = { fg = colors.pp },
        -- Include                        = {},
        -- Define                         = {},
        -- Macro                          = {},
        -- PreCondit                      = {},

        Type                              = { fg = colors.ty, style = config.typeStyle },
        -- StorageClass                   = {},
        -- Structure                      = {},
        -- Typedef                        = {},

        Special                           = { fg = colors.sp },
        -- SpecialChar                    = {},
        -- Tag                            = {},
        -- Delimiter                      = { fg = c.br},
        -- SpecialComment                 = {},
        -- Debug                          = {},

        Underlined                        = { fg = colors.sp, style = "underline" },
        Bold                              = { style = "bold" },
        Italic                            = { style = "italic" },

        Ignore                            = { link = 'NonText'},

        Error                             = { fg = colors.diag.error, bg = "NONE" },
        Todo                              = { fg = colors.fg_reverse, bg = colors.diag.info, style = "bold" },

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
        debugBreakpoint                   = { fg = colors.sp },

        LspReferenceText                  = { bg = colors.diff.text },
        LspReferenceRead                  = { link = "LspReferenceText" },
        LspReferenceWrite                 = { link = "LspReferenceText" },

        DiagnosticError                   = { fg = colors.diag.error },
        DiagnosticWarn                    = { fg = colors.diag.warning },
        DiagnosticInfo                    = { fg = colors.diag.info },
        DiagnosticHint                    = { fg = colors.diag.hint },

        DiagnosticSignError               = { link = "DiagnosticError" },
        DiagnosticSignWarn                = { link = "DiagnosticWarn" },
        DiagnosticSignInfo                = { link = "DiagnosticInfo" },
        DiagnosticSignHint                = { link = "DiagnosticHint" },

        DiagnosticVirtualTextError        = { link = "DiagnosticError" },
        DiagnosticVirtualTextWarn         = { link = "DiagnosticWarn" },
        DiagnosticVirtualTextInfo         = { link = "DiagnosticInfo" },
        DiagnosticVirtualTextHint         = { link = "DiagnosticHint" },

        DiagnosticUnderlineError          = { style = "undercurl", guisp = colors.diag.error },
        DiagnosticUnderlineWarn           = { style = "undercurl", guisp = colors.diag.warning },
        DiagnosticUnderlineInfo           = { style = "undercurl", guisp = colors.diag.info },
        DiagnosticUnderlineHint           = { style = "undercurl", guisp = colors.diag.hint },

        LspSignatureActiveParameter       = { fg = colors.diag.warning },
        LspCodeLens                       = { fg = colors.fg_comment },

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
        TSConstructor                     = { fg = colors.kw }, -- Function/Special/Statement/Keyword
        -- TSConditional                  = {},
        -- TSConstant                     = {},
        -- TSConstBuiltin                 = {},
        -- TSConstMacro                   = {},
        TSError                           = { fg = colors.diag.error },
        -- TSException                    = { link = 'Exception' }, -- default, -> statement
        TSException                       = { fg = config.specialException and colors.sp3 or colors.sm, style = config.statementStyle },
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
        TSKeywordReturn                   = { fg = config.specialReturn and colors.sp3 or colors.kw, style = config.keywordStyle },
        TSLabel                           = { link = "Label" },
        TSMethod                          = { link = "Function" },
        -- TSNamespace                    = {},
        -- TSNone                         = {},
        -- TSNumber                       = {},
        TSOperator                        = { link = "Operator" },
        TSKeywordOperator                 = { fg = colors.op, style = 'bold' },
        TSParameter                       = { link = "Identifier" }, -- default
        -- TSParameterReference           = {},
        TSProperty                        = { link = "Identifier" }, -- default
        -- TSPunctDelimiter               = { fg = c.op },
        TSPunctDelimiter                  = { fg = colors.br },
        TSPunctBracket                    = { fg = colors.br },
        TSPunctSpecial                    = { fg = colors.br },
        -- TSRepeat                       = {},
        -- TSString                       = {},
        TSStringRegex                     = { fg = colors.re },
        TSStringEscape                    = { fg = colors.re, style = "bold" },
        -- TSSymbol                       = {},
        -- TSType                         = {},
        -- TSTypeBuiltin                  = {},
        TSVariable                        = { fg = "NONE" },
        TSVariableBuiltin                 = { fg = colors.sp2, style = config.variablebuiltinStyle },

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
        diffAdded                         = { fg = colors.git.added },
        diffRemoved                       = { fg = colors.git.removed },
        diffDeleted                       = { fg = colors.git.removed },
        diffChanged                       = { fg = colors.git.changed },
        diffOldFile                       = { fg = colors.git.removed },
        diffNewFile                       = { fg = colors.git.added },
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
        GitSignsDeleteLn                  = { fg = 'NONE', bg = colors.diff.delete },

        -- Telescope                      = {},
        TelescopeBorder                   = { link = "FloatBorder" },

        -- NvimTree                       = {},
        NvimTreeNormal                    = { link = "Normal"},
        NvimTreeNormalNC                  = { link = "NormalNC"},
        NvimTreeRootFolder                = { fg = colors.id, style = "bold" },
        NvimTreeGitDirty                  = { fg = colors.git.changed },
        NvimTreeGitNew                    = { fg = colors.git.added},
        NvimTreeGitDeleted                = { fg = colors.git.removed},
        NvimTreeSpecialFile               = { fg = colors.sp },
        -- NvimTreeIndentMarker           = {},
        NvimTreeImageFile                 = { fg = colors.sp2 },
        NvimTreeSymlink                   = { link = "Type" },
        NvimTreeFolderName                = { link = "Directory" },
        NvimTreeExecFile                  = { fg = colors.springGreen, style = "bold" },
        NvimTreeGitStaged                 = { fg = colors.git.added },
        NvimTreeOpenedFile                = { fg = colors.sp, style = 'italic'},

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
        DashboardShortCut                 = { fg = colors.sp },
        DashboardHeader                   = { fg = colors.git.removed },
        DashboardCenter                   = { fg = colors.id },
        DashboardFooter                   = { fg = colors.fn },

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

        -- Floaterm
        FloatermBorder                    = { fg = colors.bg_light3},

        -- NeoVim                         = {},
        healthError                       = { fg = colors.diag.error },
        healthSuccess                     = { fg = colors.springGreen },
        healthWarning                     = { fg = colors.diag.warning },

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
        CmpDocumentation                  = { fg = colors.fg, bg = colors.bg_popup },
        CmpDocumentationBorder            = { fg = colors.fg_border, bg = "NONE" },

        CmpItemAbbr                       = { fg = colors.fg, bg = "NONE" },
        CmpItemAbbrDeprecated             = { fg = colors.fg_comment, bg = "NONE", style = "strikethrough" },

        CmpItemAbbrMatch                  = { fg = colors.fn, bg = "NONE" },
        CmpItemAbbrMatchFuzzy             = { link = "CmpItemAbbrMatch" },

        CmpItemKindDefault                = { fg = colors.dep, bg = "NONE" },
        CmpItemMenu                       = { fg = colors.fg_comment, bg = "NONE" },

        CmpItemKindVariable               = { fg = colors.fg_dark, bg = "NONE" },

        CmpItemKindFunction               = { link = "Function" },
        CmpItemKindMethod                 = { link = "Function" },

        CmpItemKindConstructor            = { link = "TSConstructor" },

        CmpItemKindClass                  = { link = "Type" },
        CmpItemKindInterface              = { link = "Type" },
        CmpItemKindStruct                 = { link = "Type" },

        CmpItemKindProperty               = { link = "TSProperty" },
        CmpItemKindField                  = { link = "TSField" },
        CmpItemKindEnum                   = { link = "Identifier" },

        CmpItemKindSnippet                = { fg = colors.sp, bg = "NONE" },

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
        IndentBlanklineChar               = { fg = colors.bg_light2 },
        IndentBlanklineSpaceChar          = { fg = colors.bg_light2 },
        IndentBlanklineSpaceCharBlankline = { fg = colors.bg_light2 },
        IndentBlanklineContextChar        = { fg = colors.bg_light3 },
        IndentBlanklineContextStart       = { guisp = colors.bg_light3, style = "underline" },
    }

    for hl, specs in pairs(config.overrides) do
        if hlgroups[hl] and not vim.tbl_isempty(specs) then
            hlgroups[hl].link = nil
        end
        hlgroups[hl] = vim.tbl_extend("force", hlgroups[hl] or {}, specs)
    end

    return hlgroups
end

return M
