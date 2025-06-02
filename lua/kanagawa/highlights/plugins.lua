local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config
    local theme = colors.theme
    return {
        -- Neovcs
        -- NeovcsBranch = {},
        -- NeovcsRemote = {},
        -- NeovcsDiffDelete = { fg = theme.vcs.removed, bg = theme.diff.delete },
        -- NeovcsDiffAdd = { fg = theme.vcs.added, bg = theme.diff.add },
        -- NeovcsHunkHeader = { fg = theme.syn.identifier },
        -- NeovcsDiffContextHighlight = { bg = theme.diff.change },

        -- vcsSigns
        -- vcsSignsAdd = { link = "diffAdded" },
        -- vcsSignsChange = { link = "diffChanged" },
        -- vcsSignsDelete = { link = "diffDeleted" },
        -- vcsSignsDeleteLn = { bg = theme.diff.delete },

        -- Gitsigns
        GitSignsAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter },
        GitSignsChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter },
        GitSignsDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter },
        -- Neogit
        NeogitDiffContextHighlight = { bg = theme.diff.change }, --[[  guibg=#333333 guifg=#b2b2b2 ]]
        NeogitHunkHeader = { fg = theme.syn.fun }, --[[  guifg=#cccccc guibg=#404040 ]]
        NeogitHunkHeaderHighlight = { fg = theme.syn.constant, bg = theme.diff.change }, --[[ guifg=#cccccc guibg=#4d4d4d ]]
        NeogitDiffAddHighlight = { bg = theme.diff.add },
        NeogitDiffDeleteHighlight = { bg = theme.diff.delete },
        -- TreeSitter Extensions
        TreesitterContext = { link = "Folded" },
        TreesitterContextLineNumber = { fg = theme.ui.special, bg = theme.ui.bg_gutter },
        -- Telescope
        TelescopeBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
        TelescopeTitle = { fg = theme.ui.special },
        TelescopeSelection = { link = "CursorLine" },
        TelescopeSelectionCaret = { link = "CursorLineNr" },
        TelescopeResultsClass = { link = "Structure" },
        TelescopeResultsStruct = { link = "Structure" },
        TelescopeResultsField = { link = "@field" },
        TelescopeResultsMethod = { link = "Function" },
        TelescopeResultsVariable = { link = "@variable" },
        -- NvimTree
        NvimTreeNormal = { link = "Normal" },
        NvimTreeNormalNC = { link = "NvimTreeNormal" },
        NvimTreeRootFolder = { fg = theme.syn.identifier, bold = true },
        NvimTreeGitDirty = { fg = theme.vcs.changed },
        NvimTreeGitNew = { fg = theme.vcs.added },
        NvimTreeGitDeleted = { fg = theme.vcs.removed },
        NvimTreeGitStaged = { fg = theme.vcs.added },
        NvimTreeSpecialFile = { fg = theme.syn.special1 },
        -- NvimTreeIndentMarker           = {},
        NvimTreeImageFile = { fg = theme.syn.special2 },
        NvimTreeSymlink = { link = "Type" },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = theme.syn.string, bold = true },
        NvimTreeOpenedFile = { fg = theme.syn.special1, italic = true },
        NvimTreeWinSeparator = { link = "WinSeparator" },
        NvimTreeWindowPicker = { bg = theme.ui.bg_m1, fg = theme.syn.special1, bold = true },
        -- NeoTree
        NeoTreeTabInactive = { link = "TabLine" },
        NeoTreeTabActive = { link = "TabLineSel" },
        NeoTreeTabSeparatorInactive = { link = "NeoTreeTabInactive" },
        NeoTreeTabSeparatorActive = { link = "NeoTreeTabActive" },
        NeoTreeRootName = { fg = theme.syn.identifier, bold = true },
        NeoTreeModified = { link = "String" },
        NeoTreeGitModified = { fg = theme.vcs.changed },
        NeoTreeGitAdded = { fg = theme.vcs.added },
        NeoTreeGitDeleted = { fg = theme.vcs.removed },
        NeoTreeGitStaged = { fg = theme.vcs.added },
        NeoTreeGitConflict = { fg = theme.diag.error },
        NeoTreeGitUntracked = { link = "NeoTreeGitModified", default = true },
        NeoTreeGitUnstaged = { link = "NeoTreeGitModified", default = true },
        NeoTreeIndentMarker = { link = "NonText" },
        -- WindowPicker
        -- NvimWindowSwitch = { bg = theme.ui.bg_m3, fg = theme.diag.warning },
        -- NvimWindowSwitchNC = { link = "NvimWindowSwitch" },
        -- Dashboard
        DashboardShortCut = { fg = theme.syn.special1 },
        DashboardHeader = { fg = theme.vcs.removed },
        DashboardCenter = { fg = theme.syn.identifier },
        DashboardFooter = { fg = theme.syn.comment },
        DashboardDesc = { fg = theme.syn.identifier },
        DashboardKey = { fg = theme.syn.special1 },
        DashboardIcon = { fg = theme.ui.special },
        -- Notify
        NotifyBackground = { bg = theme.ui.bg },
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
        DapUIScope = { link = "Special" }, -- guifg=#00F1F5"
        DapUIType = { link = "Type" }, -- guifg=#D484FF"
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
        DapUIBreakpointsPath = { link = "Directory" }, --guifg=#00F1F5"
        DapUIBreakpointsInfo = { fg = theme.diag.info }, --guifg=#A9FF68"
        DapUIBreakpointsCurrentLine = { fg = theme.syn.identifier, bold = true }, --guifg=#A9FF68 gui=bold"
        -- DapUIBreakpointsLine = {}, -- DapUILineNumber"
        DapUIBreakpointsDisabledLine = { link = "Comment" }, --guifg=#424242"
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
        CmpCompletionSel = { link = "PmenuSel" },
        CmpCompletionBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg },
        CmpCompletionThumb = { link = "PmenuThumb" },
        CmpCompletionSbar = { link = "PmenuSbar" },
        CmpItemAbbr = { fg = theme.ui.pmenu.fg },
        CmpItemAbbrDeprecated = { fg = theme.syn.comment, strikethrough = true },
        CmpItemAbbrMatch = { fg = theme.syn.fun },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = theme.ui.fg_dim },
        CmpItemMenu = { fg = theme.ui.fg_dim },
        CmpGhostText = { fg = theme.syn.comment },

        CmpItemKindText = { fg = theme.ui.fg },
        CmpItemKindMethod = { link = "@function.method" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindConstructor = { link = "@constructor" },
        CmpItemKindField = { link = "@variable.member" },
        CmpItemKindVariable = { fg = theme.ui.fg_dim },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindModule = { link = "@module" },
        CmpItemKindProperty = { link = "@property" },
        CmpItemKindUnit = { link = "Number" },
        CmpItemKindValue = { link = "String" },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindKeyword = { link = "Keyword" },
        CmpItemKindSnippet = { link = "Special" },
        CmpItemKindColor = { link = "Special" },
        CmpItemKindFile = { link = "Directory" },
        CmpItemKindReference = { link = "Special" },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindEnumMember = { link = "Constant" },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindEvent = { link = "Type" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindTypeParameter = { link = "Type" },
        CmpItemKindCopilot = { link = "String" },

        -- blink.cmp
        BlinkCmpMenu = { link = "Pmenu" },
        BlinkCmpMenuSelection = { link = "PmenuSel" },
        BlinkCmpMenuBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg },
        BlinkCmpScrollBarThumb = { link = "PmenuThumb" },
        BlinkCmpScrollBarGutter = { link = "PmenuSbar" },
        BlinkCmpLabel = { fg = theme.ui.pmenu.fg },
        BlinkCmpLabelMatch = { fg = theme.syn.fun },
        BlinkCmpLabelDetails = { fg = theme.syn.comment },
        BlinkCmpLabelDeprecated = { fg = theme.syn.comment, strikethrough = true },
        BlinkCmpGhostText = { fg = theme.syn.comment },
        BlinkCmpDoc = { link = "NormalFloat" },
        BlinkCmpDocBorder = { link = "FloatBorder" },
        BlinkCmpDocCursorLine = { link = "Visual"},
        BlinkCmpSignatureHelp = { link = "NormalFloat" },
        BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
        BlinkCmpSignatureHelpActiveParameter = { link = "LspSignatureActiveParameter"},

        BlinkCmpKind = { fg = theme.ui.fg_dim },
        BlinkCmpKindText = { fg = theme.ui.fg },
        BlinkCmpKindMethod = { link = "@function.method" },
        BlinkCmpKindFunction = { link = "Function" },
        BlinkCmpKindConstructor = { link = "@constructor" },
        BlinkCmpKindField = { link = "@variable.member" },
        BlinkCmpKindVariable = { fg = theme.ui.fg_dim },
        BlinkCmpKindClass = { link = "Type" },
        BlinkCmpKindInterface = { link = "Type" },
        BlinkCmpKindModule = { link = "@module" },
        BlinkCmpKindProperty = { link = "@property" },
        BlinkCmpKindUnit = { link = "Number" },
        BlinkCmpKindValue = { link = "String" },
        BlinkCmpKindEnum = { link = "Type" },
        BlinkCmpKindKeyword = { link = "Keyword" },
        BlinkCmpKindSnippet = { link = "Special" },
        BlinkCmpKindColor = { link = "Special" },
        BlinkCmpKindFile = { link = "Directory" },
        BlinkCmpKindReference = { link = "Special" },
        BlinkCmpKindFolder = { link = "Directory" },
        BlinkCmpKindEnumMember = { link = "Constant" },
        BlinkCmpKindConstant = { link = "Constant" },
        BlinkCmpKindStruct = { link = "Type" },
        BlinkCmpKindEvent = { link = "Type" },
        BlinkCmpKindOperator = { link = "Operator" },
        BlinkCmpKindTypeParameter = { link = "Type" },
        BlinkCmpKindCopilot = { link = "String" },

        -- IndentBlankline
        IndentBlanklineChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceCharBlankline = { fg = theme.ui.whitespace },
        IndentBlanklineContextChar = { fg = theme.ui.special },
        IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
        IblIndent = { fg = theme.ui.whitespace },
        IblWhitespace = { fg = theme.ui.whitespace },
        IblScope = { fg = theme.ui.special },
        -- Lazy
        LazyProgressTodo = { fg = theme.ui.nontext },

        -- Trouble
        TroubleIndent = { fg = theme.ui.whitespace },
        TroublePos = { fg = theme.ui.special },

        -- Nvim-Navic
        NavicIconsFile = { link = "Directory" },
        NavicIconsModule = { link = "@module" },
        NavicIconsNamespace = { link = "@module" },
        NavicIconsPackage = { link = "@module" },
        NavicIconsClass = { link = "Type" },
        NavicIconsMethod = { link = "@function.method" },
        NavicIconsProperty = { link = "@property" },
        NavicIconsField = { link = "@variable.member" },
        NavicIconsConstructor = { link = "@constructor" },
        NavicIconsEnum = { link = "Type" },
        NavicIconsInterface = { link = "Type" },
        NavicIconsFunction = { link = "Function" },
        NavicIconsVariable = { link = "@variable" },
        NavicIconsConstant = { link = "Constant" },
        NavicIconsString = { link = "String" },
        NavicIconsNumber = { link = "Number" },
        NavicIconsBoolean = { link = "Boolean" },
        NavicIconsArray = { link = "Type" },
        NavicIconsObject = { link = "Type" },
        NavicIconsKey = { link = "Identifier" },
        NavicIconsNull = { link = "Type" },
        NavicIconsEnumMember = { link = "Constant" },
        NavicIconsStruct = { link = "Structure" },
        NavicIconsEvent = { link = "Structure" },
        NavicIconsOperator = { link = "Operator" },
        NavicIconsTypeParameter = { link = "Type" },
        NavicText = { fg = theme.ui.fg },
        NavicSeparator = { fg = theme.ui.fg },

        -- Aerial icons
        AerialFileIcon = { link = "Directory" },
        AerialModuleIcon = { link = "@module" },
        AerialNamespaceIcon = { link = "@module" },
        AerialPackageIcon = { link = "@module" },
        AerialClassIcon = { link = "Type" },
        AerialMethodIcon = { link = "@function.method" },
        AerialPropertyIcon = { link = "@property" },
        AerialFieldIcon = { link = "@variable.member" },
        AerialConstructorIcon = { link = "@constructor" },
        AerialEnumIcon = { link = "Type" },
        AerialInterfaceIcon = { link = "Type" },
        AerialFunctionIcon = { link = "Function" },
        AerialVariableIcon = { link = "@variable" },
        AerialConstantIcon = { link = "Constant" },
        AerialStringIcon = { link = "String" },
        AerialNumberIcon = { link = "Number" },
        AerialBooleanIcon = { link = "Boolean" },
        AerialArrayIcon = { link = "Type" },
        AerialObjectIcon = { link = "Type" },
        AerialKeyIcon = { link = "Identifier" },
        AerialNullIcon = { link = "Type" },
        AerialEnumMemberIcon = { link = "Constant" },
        AerialStructIcon = { link = "Structure" },
        AerialEventIcon = { link = "Structure" },
        AerialOperatorIcon = { link = "Operator" },
        AerialTypeParameterIcon = { link = "Type" },

        -- Mini
        MiniAnimateCursor = { reverse = true, nocombine = true },
        MiniAnimateNormalFloat = { link = "NormalFloat" },

        MiniClueBorder = { link = "FloatBorder" },
        MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
        MiniClueDescSingle = { link = "NormalFloat" },
        MiniClueNextKey = { link = "DiagnosticFloatingHint" },
        MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
        MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
        MiniClueTitle = { link = "FloatTitle" },

        MiniCompletionActiveParameter = { underline = true },

        MiniCursorword = { underline = true },
        MiniCursorwordCurrent = { underline = true },

        MiniDepsChangeAdded = { link = "diffAdded" },
        MiniDepsChangeRemoved = { link = "diffRemoved" },
        MiniDepsHint = { fg = theme.diag.hint },
        MiniDepsInfo = { fg = theme.diag.info },
        MiniDepsMsgBreaking = { fg = theme.diag.warning },
        MiniDepsPlaceholder = { link = "Comment" },
        MiniDepsTitle = { link = "Title" },
        MiniDepsTitleError = { link = "DiffDelete" },
        MiniDepsTitleSame = { link = "DiffText" },
        MiniDepsTitleUpdate = { link = "DiffAdd" },

        MiniDiffSignAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter },
        MiniDiffSignChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter },
        MiniDiffSignDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter },
        MiniDiffOverAdd = { link = "DiffAdd" },
        MiniDiffOverChange = { link = "DiffText" },
        MiniDiffOverContext = { link = "DiffChange" },
        MiniDiffOverDelete = { link = "DiffDelete" },

        MiniFilesBorder = { link = "FloatBorder" },
        MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
        MiniFilesCursorLine = { link = "CursorLine" },
        MiniFilesDirectory = { link = "Directory" },
        MiniFilesFile = { fg = theme.ui.fg },
        MiniFilesNormal = { link = "NormalFloat" },
        MiniFilesTitle = { fg = theme.ui.special, bg = theme.ui.float.bg_border, bold = true },
        MiniFilesTitleFocused = { fg = theme.ui.fg, bg = theme.ui.float.bg_border, bold = true },

        MiniHipatternsFixme = { fg = theme.ui.bg, bg = theme.diag.error, bold = true },
        MiniHipatternsHack = { fg = theme.ui.bg, bg = theme.diag.warning, bold = true },
        MiniHipatternsNote = { fg = theme.ui.bg, bg = theme.diag.info, bold = true },
        MiniHipatternsTodo = { fg = theme.ui.bg, bg = theme.diag.hint, bold = true },

        MiniIconsAzure = { fg = theme.syn.special1 },
        MiniIconsBlue = { fg = theme.syn.fun },
        MiniIconsCyan = { fg = theme.syn.type },
        MiniIconsGreen = { fg = theme.syn.string },
        MiniIconsGrey = { fg = theme.ui.fg },
        MiniIconsOrange = { fg = theme.syn.constant },
        MiniIconsPurple = { fg = theme.syn.keyword },
        MiniIconsRed = { fg = theme.syn.special3 },
        MiniIconsYellow = { fg = theme.syn.identifier },

        MiniIndentscopeSymbol = { fg = theme.syn.special1 },
        MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

        MiniJump = { link = "SpellRare" },

        MiniJump2dDim = { link = "Comment" },
        MiniJump2dSpot = { fg = theme.syn.constant, bold = true, nocombine = true },
        MiniJump2dSpotAhead = { fg = theme.diag.hint, bg = theme.ui.bg_dim, nocombine = true },
        MiniJump2dSpotUnique = { fg = theme.syn.special1, bold = true, nocombine = true },

        MiniMapNormal = { link = "NormalFloat" },
        MiniMapSymbolCount = { link = "Special" },
        MiniMapSymbolLine = { link = "Title" },
        MiniMapSymbolView = { link = "Delimiter" },

        MiniNotifyBorder = { link = "FloatBorder" },
        MiniNotifyNormal = { link = "NormalFloat" },
        MiniNotifyTitle = { link = "FloatTitle" },

        MiniOperatorsExchangeFrom = { link = "IncSearch" },

        MiniPickBorder = { link = "FloatBorder" },
        MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
        MiniPickBorderText = { link = "FloatTitle" },
        MiniPickIconDirectory = { link = "Directory" },
        MiniPickIconFile = { link = "MiniPickNormal" },
        MiniPickHeader = { link = "DiagnosticFloatingHint" },
        MiniPickMatchCurrent = { link = "CursorLine" },
        MiniPickMatchMarked = { link = "Visual" },
        MiniPickMatchRanges = { link = "DiagnosticFloatingHint" },
        MiniPickNormal = { link = "NormalFloat" },
        MiniPickPreviewLine = { link = "CursorLine" },
        MiniPickPreviewRegion = { link = "IncSearch" },
        MiniPickPrompt = { fg = theme.syn.fun, bg = theme.ui.float.bg_border },

        MiniStarterCurrent = { nocombine = true },
        MiniStarterFooter = { fg = theme.syn.deprecated },
        MiniStarterHeader = { link = "Title" },
        MiniStarterInactive = { link = "Comment" },
        MiniStarterItem = { link = "Normal" },
        MiniStarterItemBullet = { link = "Delimiter" },
        MiniStarterItemPrefix = { fg = theme.diag.warning },
        MiniStarterSection = {  fg = theme.diag.ok },
        MiniStarterQuery = { fg = theme.diag.info },

        MiniStatuslineDevinfo = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
        MiniStatuslineFileinfo = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
        MiniStatuslineFilename = { fg = theme.ui.fg_dim, bg = theme.ui.bg_dim },
        MiniStatuslineInactive = { link = "StatusLineNC" },
        MiniStatuslineModeCommand = { fg = theme.ui.bg, bg = theme.syn.operator, bold = true },
        MiniStatuslineModeInsert = { fg = theme.ui.bg, bg = theme.diag.ok, bold = true },
        MiniStatuslineModeNormal = { fg = theme.ui.bg_m3, bg = theme.syn.fun, bold = true },
        MiniStatuslineModeOther = { fg = theme.ui.bg, bg = theme.syn.type, bold = true },
        MiniStatuslineModeReplace = { fg = theme.ui.bg, bg = theme.syn.constant, bold = true },
        MiniStatuslineModeVisual = { fg = theme.ui.bg, bg = theme.syn.keyword, bold = true },

        MiniSurround = { link = "IncSearch" },

        MiniTablineCurrent = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1, bold = true },
        MiniTablineFill = { link = "TabLineFill" },
        MiniTablineHidden = { fg = theme.ui.special, bg = theme.ui.bg_m3 },
        MiniTablineModifiedCurrent = { fg = theme.ui.bg_p1, bg = theme.ui.fg_dim, bold = true },
        MiniTablineModifiedHidden = { fg = theme.ui.bg_m3, bg = theme.ui.special },
        MiniTablineModifiedVisible = { fg = theme.ui.bg_m3, bg = theme.ui.special, bold = true },
        MiniTablineTabpagesection = { fg = theme.ui.fg, bg = theme.ui.bg_search, bold = true },
        MiniTablineVisible = { fg = theme.ui.special, bg = theme.ui.bg_m3, bold = true },

        MiniTestEmphasis = { bold = true },
        MiniTestFail = { fg = theme.diag.error, bold = true },
        MiniTestPass = { fg = theme.diag.ok, bold = true },

        MiniTrailspace = { bg = theme.vcs.removed },

        NeotestAdapterName = { fg = theme.syn.special3, },
        NeotestDir = { fg = theme.syn.fun, },
        NeotestExpandMarker = { fg = theme.syn.punct, bold = true, },
        NeotestFailed = { fg = theme.diag.error },
        NeotestFile = { fg = theme.syn.fun, },
        NeotestFocused = { bold = true, underline = true, },
        NeotestIndent = { fg = theme.ui.special, bold = true, },
        NeotestMarked = { fg = theme.diag.warning, italic = true, },
        NeotestNamespace = { fg = theme.syn.fun, },
        NeotestPassed = { fg = theme.diag.ok },
        NeotestRunning = { fg = theme.vcs.changed, },
        NeotestWinSelect = { fg = theme.diag.hint },
        NeotestSkipped = { fg = theme.syn.special1 },
        NeotestTarget = { fg = theme.syn.special3 },
        NeotestTest = { fg = theme.ui.float.fg },
        NeotestUnknown = { fg = theme.syn.deprecated },
        NeotestWatching = { fg = theme.vcs.changed, },

    }
end

return M
