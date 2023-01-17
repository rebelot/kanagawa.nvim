local c = require("kanagawa.color")
local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    local theme = colors.theme
    config = config or require("kanagawa").config

    return {
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
    }
end

return M
