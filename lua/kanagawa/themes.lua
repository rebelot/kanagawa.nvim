local c = require("kanagawa.color")

---@class SyntaxElements
---@field string Color
---@field variable Color
---@field number Color
---@field constant Color
---@field identifier Color
---@field parameter Color
---@field fun Color
---@field method Color
---@field statement Color
---@field keyword Color
---@field operator Color
---@field preproc Color
---@field type Color
---@field regex Color
---@field deprecated Color
---@field comment Color
---@field punct1 Color
---@field punct2 Color
---@field special1 Color
---@field special2 Color
---@field special3 Color

---@class DiagnosticsElements
---@field error Color
---@field ok Color
---@field warning Color
---@field info Color
---@field hint Color
--
---@class DiffElements
---@field add Color
---@field delete Color
---@field change Color
---@field text Color

---@class VCSElements
---@field added Color
---@field removed Color
---@field changed Color

---foregrounds:
---LineNr
---EndOfBuffer
---NonText (listchars excluding whitespace " ")
---Conceal
---Whitespace
---SpecialKey (unprintable chars/control sequences ^M)
--
---backgrounds:
---Gutter, StatusLine{NC}, WinBar{NC}, TabLine{Sel,Fill}
---CursorLine, CursorColumn, Folded
---@class UiElements
---@field fg Color Default foreground
---@field fg_dim Color Dimmed foreground
---@field fg_reverse Color
---@field bg Color Default background
---@field bg_dim Color Dimmed background
---@field shade0 Color Darker background
---@field shade1 Color Lighter background ColorColumn, Folded, Gutter
---@field shade2 Color Lighter background CursorLine, TabLineSel (Selected Items)
---@field shade3 Color LineNr, NonText
---@field shade4 Color Whitespace
---@field nontext Color LineNr, NonText
---@field whitespace Color Whitespace
---@field special1 Color
---@field special2 Color
---@field special3 Color
---@field bg_search Color
---@field bg_visual Color
---@field bg_incsearch Color
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg Color
---@field bg Color
---@field fg_border Color
---@field bg_border Color

---@class MenuElements
---@field bg Color
---@field fg Color
---@field fg_sel Color
---@field bg_sel Color
---@field bg_sbar Color
---@field bg_thumb Color

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term Color[]

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    default = function(palette)
        return {
            ui = {
                fg = palette.fujiWhite,
                fg_dim = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg = palette.sumiInk1,
                bg_dim = palette.sumiInk1b,

                shade0 = palette.sumiInk0,
                shade1 = palette.sumiInk2,
                shade2 = palette.sumiInk3,
                shade3 = palette.sumiInk4,
                shade4 = palette.springViolet1,

                nontext = palette.sumiInk4,
                whitespace = palette.sumiInk4,
                special2 = nil,
                special3 = nil,

                bg_search = palette.waveBlue2,
                bg_visual = palette.waveBlue1,
                bg_incsearch = palette.roninYellow,

                pmenu = {
                    bg = palette.waveBlue1,
                    bg_sel = palette.waveBlue2,
                    bg_sbar = palette.waveBlue1,
                    bg_thumb = palette.waveBlue2,
                    fg = palette.fujiWhite,
                    fg_sel = "none", -- This is important to make highlights pass-through
                },
                float = {
                    fg = palette.oldWhite,
                    bg = palette.sumiInk0,
                    fg_border = palette.sumiInk4,
                    bg_border = palette.sumiInk0,
                },
            },
            syn = {
                string = palette.springGreen,
                variable = "none",
                number = palette.sakuraPink,
                constant = palette.surimiOrange,
                identifier = palette.carpYellow,
                parameter = palette.carpYellow,
                fun = palette.crystalBlue,
                method = palette.crystalBlue,
                statement = palette.oniViolet,
                keyword = palette.oniViolet,
                operator = palette.boatYellow2,
                preproc = palette.surimiOrange,
                type = palette.waveAqua2,
                regex = palette.boatYellow2,
                deprecated = palette.katanaGray,
                comment = palette.fujiGray,
                punct1 = palette.springViolet2,
                punct2 = palette.springViolet2,
                special1 = palette.springBlue,
                special2 = palette.waveRed,
                special3 = palette.peachRed,
            },
            vcs = {
                added = palette.autumnGreen,
                removed = palette.autumnRed,
                changed = palette.autumnYellow,
            },
            diff = {
                add = palette.winterGreen,
                delete = palette.winterRed,
                change = palette.winterBlue,
                text = palette.winterYellow,
            },
            diag = {
                ok = palette.springGreen,
                error = palette.samuraiRed,
                warning = palette.roninYellow,
                info = palette.dragonBlue,
                hint = palette.waveAqua1,
            },
            term = {
                "#090618", -- black
                palette.autumnRed, -- red
                palette.autumnGreen, -- green
                palette.boatYellow2, -- yellow
                palette.crystalBlue, -- blue
                palette.oniViolet, -- magenta
                palette.waveAqua1, -- cyan
                palette.oldWhite, -- white
                palette.fujiGray, -- bright black
                palette.samuraiRed, -- bright red
                palette.springGreen, -- bright green
                palette.carpYellow, -- bright yellow
                palette.springBlue, -- bright blue
                palette.springViolet1, -- bright magenta
                palette.waveAqua2, -- bright cyan
                palette.fujiWhite, -- bright white
                palette.surimiOrange, -- extended color 1
                palette.peachRed, -- extended color 2
            },
        }
    end,
    ---@param colors PaletteColors
    ---@return ThemeColors
    dragon = function(colors)
        return {
            ui = {
                fg = "#c5c9c5",
                fg_reverse = colors.waveBlue1,

                bg = "#181616",
                bg_dim = "#1D1C19",

                shade0 = "#121111",
                shade1 = "#282727",
                shade2 = "#393836",
                shade3 = "#524F4B",
                shade4 = "#6E7675",

                bg_visual = colors.waveBlue1,
                bg_search = colors.waveBlue2,

                pmenu = {
                    fg = colors.fujiWhite,
                    fg_sel = "none",
                    bg = colors.waveBlue1,
                    bg_thumb = colors.waveBlue2,
                    bg_sbar = colors.waveBlue1,
                    bg_sel = colors.waveBlue2,
                },

                float = {
                    fg_border = colors.sumiInk4,
                    fg = colors.oldWhite,
                    bg = "#121111",
                },
            },
            syn = {
                constant = "#b6927b",
                string = "#87a987",
                number = "#a292a3",
                identifier = "#a6a69c", --ok
                fun = "#8ba4b0",
                statement = "#8992a7",
                keyword = "#8992a7",
                operator = "#c4746e",
                preproc = "#a99c8b",
                -- ty = "#5B7B79",
                type = "#8ea4a2",
                special1 = "#949fb5",
                special2 = "#aa9e89",
                special3 = "#aa9e89",
                punct1 = "#9e9b93",
                punct2 = "#9e9b93",
                regex = "#c3746e",
                deprecated = colors.katanaGray,
                comment = "#737c73",
            },

            diag = {
                error = colors.samuraiRed,
                ok = colors.springGreen,
                warning = colors.roninYellow,
                info = colors.dragonBlue,
                hint = colors.waveAqua1,
            },

            diff = {
                add = colors.winterGreen,
                delete = colors.winterRed,
                change = colors.winterBlue,
                text = colors.winterYellow,
            },

            vcs = {
                added = colors.autumnGreen,
                removed = colors.autumnRed,
                changed = colors.autumnYellow,
            },
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    light = function(palette)
        return {
            ui = {
                fg = tostring(c(palette.sumiInk1):lighten(3.0):saturate(0.9)),
                fg_dim = tostring(c(palette.sumiInk1):lighten(2.5):saturate(2.5)),
                fg_reverse = palette.fujiWhite,

                bg_dim = tostring(c(palette.fujiWhite):lighten(1.1):saturate(1.5):lighten(0.97)),
                bg = tostring(c(palette.fujiWhite):lighten(1.1):saturate(1.8)),

                shade0 = tostring(c(palette.fujiWhite):lighten(0.96):saturate(1.5)),
                shade1 = tostring(c(palette.oldWhite):lighten(1.12):saturate(0.99)),
                shade2 = tostring(c(palette.oldWhite):lighten(1.15)),
                shade3 = tostring(c(palette.springViolet1):lighten(1.1):saturate(0.6)),
                shade4 = tostring(c(palette.springViolet1):lighten(0.8)),

                nontext = tostring(c(palette.springViolet1):lighten(1.1):saturate(0.6)),
                whitespace = tostring(c(palette.springViolet1):lighten(1.1):saturate(0.6)),
                special2 = nil,
                special3 = nil,
                bg_visual = tostring(c(palette.waveBlue1):lighten(4):saturate(0.20)),
                bg_search = tostring(c(palette.waveBlue2):lighten(2.5):hue(0.9):saturate(0.3)),
                bg_incsearch = tostring(c(palette.roninYellow):lighten(0.9):saturate(1)),
                pmenu = {
                    bg = tostring(c(palette.waveBlue2):lighten(2.65):saturate(0.4):hue(0.95)),
                    bg_sel = tostring(c(palette.waveBlue1):lighten(3.55):saturate(0.5):hue(0.95)),
                    bg_sbar = tostring(c(palette.waveBlue2):lighten(2.65):saturate(0.4):hue(0.95)),
                    bg_thumb = tostring(c(palette.waveBlue2):lighten(2.5):hue(0.9):saturate(0.3)),
                    fg_menu = tostring(c(palette.sumiInk4):lighten(0.90)),
                    fg_sel = "none", -- This is important to make highlights pass-through
                },
                float = {
                    fg = tostring(c(palette.sumiInk1):lighten(2.5):saturate(2.5)),
                    bg = tostring(c(palette.fujiWhite):lighten(0.96):saturate(1.5)),
                    fg_border = tostring(c(palette.oldWhite):lighten(0.6):saturate(0.5)),
                    bg_border = palette.sumiInk0,
                },
            },
            syn = {
                string = tostring(c(palette.springGreen):lighten(0.75)),
                variable = "none",
                number = tostring(c(palette.sakuraPink):lighten(0.8):saturate(0.9)),
                constant = tostring(c(palette.surimiOrange):lighten(0.75)),
                identifier = tostring(c(palette.carpYellow):lighten(0.65):saturate(1.2)),
                parameter = palette.carpYellow,
                fun = tostring(c(palette.crystalBlue):lighten(0.73):saturate(1)),
                method = tostring(c(palette.crystalBlue):lighten(0.73):saturate(1)),
                statement = tostring(c(palette.oniViolet):lighten(0.8):saturate(1)),
                keyword = tostring(c(palette.oniViolet):lighten(0.8):saturate(1)),
                operator = tostring(c(palette.boatYellow2):lighten(0.7):saturate(1)),
                preproc = tostring(c(palette.surimiOrange):lighten(0.75)),
                type = tostring(c(palette.waveAqua2):lighten(0.8):saturate(1)),
                regex = tostring(c(palette.boatYellow2):lighten(0.7):saturate(1)),
                deprecated = tostring(c(palette.katanaGray):lighten(0.5)),
                comment = tostring(c(palette.fujiGray):lighten(1.2)),
                punct1 = tostring(c(palette.springViolet2):lighten(0.7):saturate(0.9)),
                punct2 = tostring(c(palette.springViolet2):lighten(0.7):saturate(0.9)),
                special1 = tostring(c(palette.springBlue):lighten(0.78):saturate(1.34)),
                special2 = tostring(c(palette.waveRed):lighten(0.80):saturate(1.0)),
                special3 = tostring(c(palette.peachRed):lighten(0.8):saturate(1):hue(1)),
            },
            vcs = {
                added = tostring(c(palette.autumnGreen):lighten(0.97):saturate(1.2)),
                removed = tostring(c(palette.autumnRed):lighten(1.1):saturate(1)),
                changed = tostring(c(palette.autumnYellow):lighten(0.95):saturate(1.5)),
            },
            diff = {
                add = tostring(c(palette.winterGreen):lighten(4):saturate(0.9)),
                delete = tostring(c(palette.winterRed):lighten(3.9):saturate(1.3):hue(0.08)),
                change = tostring(c(palette.winterBlue):lighten(5.8):saturate(0.5):hue(0.5)),
                text = tostring(c(palette.winterYellow):lighten(3):saturate(4)),
            },
            diag = {
                error = tostring(c(palette.samuraiRed):lighten(1)),
                ok = tostring(c(palette.springGreen):lighten(0.75)),
                warning = tostring(c(palette.roninYellow):lighten(0.9):saturate(1)),
                info = tostring(c(palette.dragonBlue):lighten(0.9)),
                hint = tostring(c(palette.waveAqua1):lighten(0.9)),
            },
            term = {},
        }
    end,
}
