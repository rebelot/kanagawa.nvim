local c = require("kanagawa.colors")
local config = require("kanagawa").config

-- Type non convince
-- statement troppo chiaro
-- cambiare stetemnt e type sicuro
-- function troppo chiaro anzi forse ok
-- numeri troppo scuri
-- search nn convince
-- nontext troppo chiaro
-- keyword/statment/operator con lo stesso colore potrebbe avere senso! (vedi git)
-- LspReferenceText must be different from visual or search

local hlgroups = {
	Comment                        = { fg = c.comment, style = config.commentStyle },
	ColorColumn                    = { bg = c.bg_light },
	Conceal                        = {},
	Cursor                         = { fg = c.bg, bg = c.fg },
	lCursor                        = { link = "Cursor" },
	CursorIM                       = { link = "Cursor" },
	CursorLine                     = { bg = c.bg_light },
	CursorColumn                   = { link = "CursorLine" },
	Directory                      = { fg = c.dragonBlue },
	DiffAdd                        = { fg = c.fg_dark, bg = c.diff.add },
	DiffChange                     = { fg = c.fg_dark, bg = c.diff.change },
	DiffDelete                     = { fg = c.comment, bg = c.diff.delete },
	DiffText                       = { fg = c.fg_dark, bg = c.diff.text },
	EndOfBuffer                    = { fg = c.bg },
	-- TermCursor                  = {},
	-- TermCursorNC                = {},
	ErrorMsg                       = { fg = c.diag.error, bg = c.bg },
	VertSplit                      = { bg = c.deepBlue, fg = c.bg },
	Folded                         = { fg = c.foamBlue, bg = c.bg_light },
	FoldColumn                     = { fg = c.steelGray, bg = c.bg },
	SignColumn                     = { fg = c.steelGray, bg = c.bg },
	SignColumnSB                   = { link = "SignColumn" },
	Substitute                     = { fg = c.fg, bg = c.tantoRed },
	LineNr                         = { fg = c.inkBlack3 },
	CursorLineNr                   = { fg = c.carpYellow, bg = c.bg, style = "bold" },
	MatchParen                     = { fg = c.autumnYellow, bg = "NONE", style = "bold" },
	ModeMsg                        = { fg = c.carpYellow, style = "bold", bg = c.bg},
	MsgArea                        = { fg = c.fg, bg = c.bg},
	-- MsgSeparator                = {},
	MoreMsg                        = { fg = c.boatBrown, bg = c.bg, style='NONE' },
	NonText                        = { fg = c.voidGray },
	Normal                         = { fg = c.fg, bg = not config.transparent and c.bg or 'NONE' },
	NormalNC                       = { link = "Normal" },
	NormalSB                       = { link = "Normal" },
	NormalFloat                    = { fg = c.fg, bg = c.bg_float },
	FloatBorder                    = { fg = c.float_border, bg = c.bg},
	Pmenu                          = { fg = c.fg, bg = c.bg_float },
	PmenuSel                       = { fg = c.fg, bg = c.oceanBlue },
	PmenuSbar                      = { link = "Pmenu" },
	PmenuThumb                     = { bg = c.dragonBlue },
	Question                       = { link = "MoreMsg" },
	QuickFixLine                   = { link = "CursorLine" },
	Search                         = { fg = c.fg, bg = c.bg_search },
	IncSearch                      = { fg = c.deepBlue, bg = c.carpYellow, gui='NONE' },
	SpecialKey                     = { link = "NonText" },
	SpellBad                       = { style = "undercurl", guisp = c.diag.error },
	SpellCap                       = { style = "undercurl", guisp = c.diag.warning },
	SpellLocal                     = { style = "undercurl", guisp = c.diag.warning },
	SpellRare                      = { style = "undercurl", guisp = c.diag.warning },
	StatusLine                     = { fg = c.fg, bg = c.bg_status, style='NONE' },
	StatusLineNC                   = { fg = c.steelGray, bg = c.bg_status, style='NONE' },
	TabLine                        = { link = "StatusLineNC" },
	TabLineFill                    = { bg = c.bg },
	TabLineSel                     = { fg = c.steelGray, bg = c.bg_light },
	Title                          = { fg = c.dragonBlue, style = "bold" },
	Visual                         = { bg = c.bg_visual },
	VisualNOS                      = { link = "Visual" },
	WarningMsg                     = { bg = c.diag.error, fg = c.fg },
	Whitespace                     = { fg = c.steelGray },
	WildMenu                       = { link = "Pmenu" },

	Constant                       = { fg = c.sunsetOrange },
	String                         = { fg = c.springGreen },
	Character                      = { fg = c.sunsetOrange },
	Number                         = { fg = c.geishaPink },
	Boolean                        = { fg = c.waveAqua, style = "bold" },
	Float                          = { link = "Number" },

	Identifier                     = { fg = c.goldYellow },
	Function                       = { fg = c.foamBlue, style = config.functionStyle },
	Statement                      = { fg = c.dragonBlue, style = "bold" },
	-- Conditional                 = {},
	-- Repeat                      = {},
	Label                          = { fg = c.autumnOrange },
	Operator                       = { fg = c.boatBrown },
	Keyword                        = { fg = c.oniViolet, style = config.keywordStyle },
	-- Exception                   = {},

	PreProc                        = { fg = c.sunsetOrange },
	-- Include                     = {},
	-- Define                      = {},
	-- Macro                       = {},
	-- PreCondit                   = {},

	Type                           = { fg = c.boatBrownDark, style = config.typeStyle },
	-- StorageClass                = {},
	-- Structure                   = {},
	-- Typedef                     = {},

	Special                        = { fg = c.springBlue },
	-- SpecialChar                 = {},
	-- Tag                         = {},
	-- Delimiter                   = {},
	-- SpecialComment              = {},
	-- Debug                       = {},

	Underlined                     = { fg = c.springBlue, style = "undercurl" },
	Bold                           = { style = "bold" },
	Italic                         = { style = "italic" },

	-- Ignore                      = {},

	Error                          = { fg = c.diag.error, bg = c.bg },
	Todo                           = { fg = c.fg, bg = c.diag.info },

	qfLineNr                       = { link = "lineNr" },
	qfFileName                     = { link = "Directory" },

	htmlH1                         = {},
	htmlH2                         = {},

	-- mkdHeading                  = {},
	-- mkdCode                     = {},
	mkdCodeDelimiter               = {},
	mkdCodeStart                   = {},
	mkdCodeEnd                     = {},
	-- mkdLink                     = {},

	markdownHeadingDelimiter       = {},
	markdownCode                   = {},
	markdownCodeBlock              = {},
	markdownH1                     = {},
	markdownH2                     = {},
	markdownLinkText               = {},

	debugPC                        = { link = "CursorLine" },
	debugBreakpoint                = { fg = c.autumnGreen },

	LspReferenceText               = { bg = c.deepBlue },
	LspReferenceRead               = { link = "LspReferenceText" },
	LspReferenceWrite              = { link = "LspReferenceText" },

	DiagnosticError                = { fg = c.diag.error },
	DiagnosticWarn                 = { fg = c.diag.warning },
	DiagnosticInfo                 = { fg = c.diag.info },
	DiagnosticHint                 = { fg = c.diag.hint },

	DiagnosticSignError            = { link = "DiagnosticError" },
	DiagnosticSignWarn             = { link = "DiagnosticWarn" },
	DiagnosticSignInfo             = { link = "DiagnosticInfo" },
	DiagnosticSignHint             = { link = "DiagnosticHint" },

	DiagnosticVirtualTextError     = { link = "DiagnosticError" },
	DiagnosticVirtualTextWarn      = { link = "DiagnosticWarn" },
	DiagnosticVirtualTextInfo      = { link = "DiagnosticInfo" },
	DiagnosticVirtualTextHint      = { link = "DiagnosticHint" },

	DiagnosticUnderlineError       = { style = "undercurl", guisp = c.diag.error },
	DiagnosticUnderlineWarn        = { style = "undercurl", guisp = c.diag.warning },
	DiagnosticUnderlineInfo        = { style = "undercurl", guisp = c.diag.info },
	DiagnosticUnderlineHint        = { style = "undercurl", guisp = c.diag.hint },

	LspSignatureActiveParameter    = { fg = c.autumnOrange },
	LspCodeLens                    = { fg = c.fujiGray },

	-- ALEErrorSign                = {},
	-- ALEWarningSign              = {},

	-- TSAnnotation                = {},
	-- TSAttribute                 = {},
	-- TSBoolean                   = {},
	-- TSCharacter                 = {},
	-- TSComment                   = {},
	TSNote                         = {},
	TSWarning                      = {},
	TSDanger                       = {},
	TSConstructor                  = {},
	-- TSConditional               = {},
	-- TSConstant                  = {},
	-- TSConstBuiltin              = {},
	-- TSConstMacro                = {},
	-- TSError                     = {},
	-- TSException                 = {},
	TSField                        = {},
	-- TSFloat                     = {},
	-- TSFunction                  = {},
	-- TSFuncBuiltin               = {},
	-- TSFuncMacro                 = {},
	-- TSInclude                   = {},
	TSKeyword                      = { link = "Keyword" },
	TSKeywordFunction              = { link = "Keyword" },
	TSLabel                        = { link = "Label" },
	TSMethod                       = { link = "Function" },
	-- TSNamespace                 = {},
	-- TSNone                      = {},
	-- TSNumber                    = {},
	TSOperator                     = { link = "Operator" },
	TSParameter                    = {},
	-- TSParameterReference        = {},
	TSProperty                     = {},
	TSPunctDelimiter               = {},
	TSPunctBracket                 = {},
	TSPunctSpecial                 = {},
	-- TSRepeat                    = {},
	-- TSString                    = {},
	TSStringRegex                  = { fg = "boatBrown" },
	TSStringEscape                 = { fg = "boatBrownDark" },
	-- TSSymbol                    = {},
	-- TSType                      = {},
	-- TSTypeBuiltin               = {},
	TSVariable                     = {},
	TSVariableBuiltin              = { fg = c.geishaPink3, style='italic' },

	-- TSTag                       = {},
	-- TSTagDelimiter              = {},
	-- TSText                      = {},
	TSTextReference                = {},
	-- TSEmphasis                  = {},
	-- TSUnderline                 = {},
	-- TSStrike                    = {},
	-- TSTitle                     = {},
	-- TSLiteral                   = {},
	-- TSURI                       = {},

	-- Lua
	-- luaTSProperty               = {},

	-- LspTrouble
	-- LspTroubleText              = {},
	-- LspTroubleCount             = {},
	-- LspTroubleNormal            = {},

	-- Illuminate
	-- illuminatedWord             = {},
	-- illuminatedCurWord          = {},

	-- Git
	diffAdded                      = { fg = c.diff.add },
	diffDeleted                    = { fg = c.diff.delete },
	diffRemoved                    = { fg = c.diff.delete },
	diffChanged                    = { fg = c.diff.change },
	-- diffOldFile                    = { fg = c.diff.delete },
	-- diffNewFile                    = { fg = c.diff.add },
	-- diffFile                       = { fg = c.steelGray },
	-- diffLine                       = { fg = c.steelGray },
	-- diffIndexLine                  = { link = 'Identifier' },

	-- Neogit
	-- NeogitBranch                = {},
	-- NeogitRemote                = {},
	-- NeogitHunkHeader            = {},
	-- NeogitHunkHeaderHighlight   = {},
	-- NeogitDiffContextHighlight  = {},
	-- NeogitDiffDeleteHighlight   = {},
	-- NeogitDiffAddHighlight      = {},

	-- GitGutter
	-- GitGutterAdd                = {},
	-- GitGutterChange             = {},
	-- GitGutterDelete             = {},

	-- GitSigns
	GitSignsAdd                    = { link = "diffAdded" },
	GitSignsChange                 = { link = "diffChanged" },
	GitSignsDelete                 = { link = "diffDeleted" },

	-- Telescope                   = {},
	TelescopeBorder                = { link = "FloatBorder" },

	-- NvimTree                    = {},
	NvimTreeNormal                 = { fg = c.fg, bg = c.bg },
	-- NvimTreeNormalNC            = {},
	NvimTreeRootFolder             = { fg = c.oniViolet, style='bold'},
	-- NvimTreeGitDirty            = {},
	-- NvimTreeGitNew              = {},
	-- NvimTreeGitDeleted          = {},
	-- NvimTreeSpecialFile         = {},
	-- NvimTreeIndentMarker        = {},
	-- NvimTreeImageFile           = {},
	NvimTreeSymlink                = { fg = c.waveAqua },
	NvimTreeFolderName             = { link = "Directory" },

	-- Fern
	-- FernBranchText              = {},

	-- glyph palette               = {},
	-- GlyphPalette1               = {},
	-- GlyphPalette2               = {},
	-- GlyphPalette3               = {},
	-- GlyphPalette4               = {},
	-- GlyphPalette6               = {},
	-- GlyphPalette7               = {},
	-- GlyphPalette9               = {},

	-- Dashboard
	DashboardShortCut              = { fg = c.oniViolet },
	DashboardHeader                = { fg = c.tantoRed },
	DashboardCenter                = { fg = c.boatBrown },
	DashboardFooter                = { fg = c.steelGray },

	-- WhichKey                    = {},
	-- WhichKeyGroup               = {},
	-- WhichKeyDesc                = {},
	-- WhichKeySeperator           = {},
	-- WhichKeySeparator           = {},
	-- WhichKeyFloat               = {},
	-- WhichKeyValue               = {},

	-- LspSaga
	-- DiagnosticWarning           = {},
	-- DiagnosticInformation       = {},

	-- LspFloatWinNormal           = {},
	-- LspFloatWinBorder           = {},
	-- LspSagaBorderTitle          = {},
	-- LspSagaHoverBorder          = {},
	-- LspSagaRenameBorder         = {},
	-- LspSagaDefPreviewBorder     = {},
	-- LspSagaCodeActionBorder     = {},
	-- LspSagaFinderSelection      = {},
	-- LspSagaCodeActionTitle      = {},
	-- LspSagaCodeActionContent    = {},
	-- LspSagaSignatureHelpBorder  = {},
	-- ReferencesCount             = {},
	-- DefinitionCount             = {},
	-- DefinitionIcon              = {},
	-- ReferencesIcon              = {},
	-- TargetWord                  = {},

	-- NeoVim                      = {},
	healthError                    = {fg = c.diag.error},
	healthSuccess                  = {fg = c.springGreen},
	healthWarning                  = {fg = c.diag.warning},

	-- BufferLine
	-- BufferLineIndicatorSelected = {},
	-- BufferLineFill              = {},

	-- Barbar                      = {},
	-- BufferCurrent               = {},
	-- BufferCurrentIndex          = {},
	-- BufferCurrentMod            = {},
	-- BufferCurrentSign           = {},
	-- BufferCurrentTarget         = {},
	-- BufferVisible               = {},
	-- BufferVisibleIndex          = {},
	-- BufferVisibleMod            = {},
	-- BufferVisibleSign           = {},
	-- BufferVisibleTarget         = {},
	-- BufferInactive              = {},
	-- BufferInactiveIndex         = {},
	-- BufferInactiveMod           = {},
	-- BufferInactiveSign          = {},
	-- BufferInactiveTarget        = {},
	-- BufferTabpages              = {},
	-- BufferTabpage               = {},

	-- Sneak
	-- Sneak                       = {},
	-- SneakScope                  = {},

	-- Hop
	-- HopNextKey                  = {},
	-- HopNextKey1                 = {},
	-- HopNextKey2                 = {},
	-- HopUnmatched                = {},

	-- LightspeedGreyWash          = {},

    -- Cmp
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.float_border, bg = c.bg },

    CmpItemAbbr            = { fg = c.fg, bg = "NONE" },
    CmpItemAbbrDeprecated  = { fg = c.comment, bg = "NONE", style = "strikethrough" },
    CmpItemAbbrMatch       = { fg = c.springBlue, bg = "NONE" },
    CmpItemAbbrMatchFuzzy  = { fg = c.springBlue, bg = "NONE" },

    CmpItemKindDefault     = { fg = c.steelGray, bg = "NONE" },
    CmpItemMenu            = { fg = c.comment, bg = "NONE" },

    CmpItemKindVariable    = { link = 'TSVariable' },

    CmpItemKindFunction    = { link = 'Function'},
    CmpItemKindMethod      = { link = 'Function'},

	CmpItemKindConstructor = { link = "TSConstructor"},

    CmpItemKindClass       = { link = 'Type' },
    CmpItemKindInterface   = { link = 'Type' },
	CmpItemKindStruct      = { link = "Type"},

    CmpItemKindProperty    = { link = "TSProperty" },
    CmpItemKindField       = { link = "TSField" },
	CmpItemKindEnum        = { link = 'Identifier'},

    CmpItemKindSnippet     = { fg = c.comment, bg = "NONE" },

    CmpItemKindText        = { link = "TSText"},

	CmpItemKindModule      = { link = "TSInclude"},

	CmpItemKindFile        = { link = "Directory" },
	CmpItemKindFolder      = { link = "Directory" },

	CmpItemKindKeyword     = { link = "TSKeyword" },
	CmpItemKindTypeParameter = { link = 'Identifier' },
	CmpItemKindConstant    = { link = "Constant" },
	CmpItemKindOperator    = { link = 'Operator' },
	CmpItemKindReference   = { link = "TSParameterReference" },
	CmpItemKindEnumMember  = { link = "TSField" },

	CmpItemKindValue       = { link = 'String'},
	CmpItemKindUnit        = {},
	CmpItemKindEvent       = {},
	CmpItemKindColor       = {},

	-- IndentBlankline
    IndentBlanklineChar = { fg = c.voidGray},
    IndentBlanklineSpaceChar = { fg = c.voidGray},
    IndentBlanklineSpaceCharBlankline = { fg = c.voidGray},
    IndentBlanklineContextChar = { fg = c.oceanBlue },
    IndentBlanklineContextStart = { guisp = c.oceanBlue, style = 'underline'},
}

for group, colors in pairs(config.overrides) do
    hlgroups[group] = vim.tbl_extend('force', hlgroups[group] or {}, colors)
end

return hlgroups
