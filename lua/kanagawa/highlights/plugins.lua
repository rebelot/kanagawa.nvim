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
        TelescopeSelection = { link = 'CursorLine' },
        TelescopeSelectionCaret = { link = 'CursorLineNr' },
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
        DapUIScope = { link = "Special" },                                        -- guifg=#00F1F5"
        DapUIType = { link = "Type" },                                            -- guifg=#D484FF"
        -- DapUIValue = { link = "Normal" },
        DapUIModifiedValue = { fg = theme.syn.special1, bold = true },            -- guifg=#00F1F5 gui=bold"
        DapUIDecoration = { fg = theme.ui.float.fg_border },                      -- guifg=#00F1F5"
        DapUIThread = { fg = theme.syn.identifier },                              --guifg=#A9FF68"
        DapUIStoppedThread = { fg = theme.syn.special1 },                         --guifg=#00f1f5"
        -- DapUIFrameName = { link = "Normal"},
        DapUISource = { fg = theme.syn.special2 },                                -- guifg=#D484FF"
        DapUILineNumber = { fg = theme.syn.special1 },                            -- guifg=#00f1f5"
        DapUIFloatBorder = { fg = theme.ui.float.fg_border },                     -- guifg=#00F1F5"
        DapUIWatchesEmpty = { fg = theme.diag.error },                            -- guifg=#F70067"
        DapUIWatchesValue = { fg = theme.syn.identifier },                        -- guifg=#A9FF68"
        DapUIWatchesError = { fg = theme.diag.error },                            --guifg=#F70067"
        DapUIBreakpointsPath = { link = "Directory" },                            --guifg=#00F1F5"
        DapUIBreakpointsInfo = { fg = theme.diag.info },                          --guifg=#A9FF68"
        DapUIBreakpointsCurrentLine = { fg = theme.syn.identifier, bold = true }, --guifg=#A9FF68 gui=bold"
        -- DapUIBreakpointsLine = {}, -- DapUILineNumber"
        DapUIBreakpointsDisabledLine = { link = "Comment" },                      --guifg=#424242"
        -- DapUICurrentFrameName = {}, -- DapUIBreakpointsCurrentLine"
        DapUIStepOver = { fg = theme.syn.special1 },                              --guifg=#00f1f5"
        DapUIStepInto = { fg = theme.syn.special1 },                              --guifg=#00f1f5"
        DapUIStepBack = { fg = theme.syn.special1 },                              --guifg=#00f1f5"
        DapUIStepOut = { fg = theme.syn.special1 },                               --guifg=#00f1f5"
        DapUIStop = { fg = theme.diag.error },                                    --guifg=#F70067"
        DapUIPlayPause = { fg = theme.syn.string },                               --guifg=#A9FF68"
        DapUIRestart = { fg = theme.syn.string },                                 --guifg=#A9FF68"
        DapUIUnavailable = { fg = theme.syn.comment },                            --guifg=#424242"
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
        CmpItemKindConstructor = { link = "@constructor" },
        CmpItemKindClass = { link = "Type" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindProperty = { link = "@property" },
        CmpItemKindField = { link = "@field" },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindSnippet = { fg = theme.syn.special1 },
        CmpItemKindText = { fg = theme.ui.pmenu.fg },
        CmpItemKindModule = { link = "@include" },
        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindKeyword = { link = "@keyword" },
        CmpItemKindTypeParameter = { link = "Type" },
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindReference = { link = "Type" },
        CmpItemKindEnumMember = { link = "Constant" },
        CmpItemKindValue = { link = "String" },
        CmpItemKindCopilot = { link = "String" },
        -- CmpItemKindUnit = {},
        -- CmpItemKindEvent = {},
        -- CmpItemKindColor = {},

        -- IndentBlankline
        IndentBlanklineChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceChar = { fg = theme.ui.whitespace },
        IndentBlanklineSpaceCharBlankline = { fg = theme.ui.whitespace },
        IndentBlanklineContextChar = { fg = theme.ui.special },
        IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
        -- Lazy
        LazyProgressTodo = { fg = theme.ui.nontext },
    }
end

return M
