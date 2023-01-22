-- local c = require("kanagawa.color")

--TODO:
--PreProc needs its own color
--parameter and field should be different
---@class SyntaxElements
---@field string ColorSpec
---@field variable ColorSpec
---@field number ColorSpec
---@field constant ColorSpec
---@field identifier ColorSpec
---@field parameter ColorSpec
---@field fun ColorSpec
---@field statement ColorSpec
---@field keyword ColorSpec
---@field operator ColorSpec
---@field preproc ColorSpec
---@field type ColorSpec
---@field regex ColorSpec
---@field deprecated ColorSpec
---@field comment ColorSpec
---@field punct ColorSpec
---@field special1 ColorSpec
---@field special2 ColorSpec
---@field special3 ColorSpec

---@class DiagnosticsElements
---@field error ColorSpec
---@field ok ColorSpec
---@field warning ColorSpec
---@field info ColorSpec
---@field hint ColorSpec
--
---@class DiffElements
---@field add ColorSpec
---@field delete ColorSpec
---@field change ColorSpec
---@field text ColorSpec

---@class VCSElements
---@field added ColorSpec
---@field removed ColorSpec
---@field changed ColorSpec

---@class UiElements
---@field fg ColorSpec Default foreground
---@field fg_dim ColorSpec Dimmed foreground
---@field fg_reverse ColorSpec
---@field bg_dim ColorSpec Dimmed background
---@field bg_m3 ColorSpec
---@field bg_m2 ColorSpec
---@field bg_m1 ColorSpec
---@field bg ColorSpec Default background
---@field bg_p1 ColorSpec Lighter background ColorColumn, Folded, Gutter
---@field bg_p2 ColorSpec Lighter background Cursor{Line,Column}, TabLineSel (Selected Items)
---@field bg_gutter ColorSpec {Sign,Fold}Column, LineNr
---@field special ColorSpec SpecialKey
---@field nontext ColorSpec LineNr, NonText
---@field whitespace ColorSpec Whitespace
---@field bg_search ColorSpec
---@field bg_visual ColorSpec
---@field pmenu MenuElements
---@field float FloatElements

---@class FloatElements
---@field fg ColorSpec
---@field bg ColorSpec
---@field fg_border ColorSpec
---@field bg_border ColorSpec

---@class MenuElements
---@field bg ColorSpec
---@field fg ColorSpec
---@field fg_sel ColorSpec
---@field bg_sel ColorSpec
---@field bg_sbar ColorSpec
---@field bg_thumb ColorSpec

---@class ThemeColors
---@field syn SyntaxElements
---@field diag DiagnosticsElements
---@field vcs VCSElements
---@field diff DiffElements
---@field ui UiElements
---@field term ColorSpec[]

return {
    ---@param palette PaletteColors
    ---@return ThemeColors
    wave = function(palette)
        return {
            ui = {
                fg = palette.fujiWhite,
                fg_dim = palette.oldWhite,
                fg_reverse = palette.waveBlue1,

                bg_dim = palette.sumiInk1,
                bg_gutter = palette.sumiInk4,

                bg_m3 = palette.sumiInk0,
                bg_m2 = palette.sumiInk1,
                bg_m1 = palette.sumiInk2,
                bg = palette.sumiInk3,
                bg_p1 = palette.sumiInk4,
                bg_p2 = palette.sumiInk5,

                special = palette.springViolet1,
                nontext = palette.sumiInk6,
                whitespace = palette.sumiInk6,

                bg_search = palette.waveBlue2,
                bg_visual = palette.waveBlue1,

                pmenu = {
                    fg = palette.fujiWhite,
                    fg_sel = "none", -- This is important to make highlights pass-through
                    bg = palette.waveBlue1,
                    bg_sel = palette.waveBlue2,
                    bg_sbar = palette.waveBlue1,
                    bg_thumb = palette.waveBlue2,
                },
                float = {
                    fg = palette.oldWhite,
                    bg = palette.sumiInk0,
                    fg_border = palette.sumiInk6,
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
                statement = palette.oniViolet,
                keyword = palette.oniViolet,
                operator = palette.boatYellow2,
                preproc = palette.surimiOrange, --lightBlue? deserves its own color
                type = palette.waveAqua2,
                regex = palette.boatYellow2,
                deprecated = palette.katanaGray,
                comment = palette.fujiGray,
                punct = palette.springViolet2,
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
                fg_dim = colors.oldWhite,
                fg_reverse = colors.waveBlue1,

                bg_dim = "#1D1C19",
                bg_gutter = "#181616",

                bg_m3 = "#121111",
                bg_m2 = "#1D1C19",
                bg_m1 = "#1D1C19",
                bg = "#181616",
                bg_p1 = "#282727",
                bg_p2 = "#393836",

                special = "#6E7675",
                whitespace = "#524F4B",
                nontext = "#524F4B",

                bg_visual = colors.waveBlue1,
                bg_search = colors.waveBlue2,

                pmenu = {
                    fg = colors.fujiWhite,
                    fg_sel = "none",
                    bg = colors.waveBlue1,
                    bg_sel = colors.waveBlue2,
                    bg_thumb = colors.waveBlue2,
                    bg_sbar = colors.waveBlue1,
                },

                float = {
                    fg = colors.oldWhite,
                    bg = "#121111",
                    fg_border = colors.sumiInk6,
                    bg_border = "#121111",
                },
            },
            syn = {
                string = "#87a987",
                variable = "none",
                number = "#a292a3",
                constant = "#b6927b",
                identifier = "#a6a69c", --ok
                parameter = "#a6a69c",
                fun = "#8ba4b0",
                statement = "#8992a7",
                keyword = "#8992a7",
                operator = "#c4746e",
                preproc = "#a99c8b",
                -- type = "#5B7B79",
                type = "#8ea4a2",
                regex = "#c3746e",
                deprecated = colors.katanaGray,
                punct = "#9e9b93",
                comment = "#737c73",
                special1 = "#949fb5",
                special2 = "#aa9e89",
                special3 = "#aa9e89",
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

            term = {},
        }
    end,
    ---@param palette PaletteColors
    ---@return ThemeColors
    lotus = function(palette)
        return {
            ui = {
                fg = "#545464",
                fg_dim = "#43436c",
                fg_reverse = "#dcd7ba",

                bg_dim = "#e3daa8",
                bg_gutter = "#eae0ac",

                bg_m3 = "#d5cea3",
                bg_m2 = "#dcd5ac",
                bg_m1 = "#e5ddb0",
                bg = "#f2ecbc",
                bg_p1 = "#e7dba0",
                bg_p2 = "#e4d794",

                nontext = "#a09cac",
                whitespace = "#a09cac",
                special = "#766b90",

                bg_visual = "#c9cbd1",
                bg_search = "#b5cbd2",

                pmenu = {
                    fg = "#4b4b64",
                    fg_sel = "none", -- This is important to make highlights pass-through
                    bg = "#c7d7e0",
                    bg_sel = "#9fb5c9",
                    bg_sbar = "#c7d7e0",
                    bg_thumb = "#b5cbd2",
                },
                float = {
                    fg = "#43436c",
                    bg = "#d5cea3",
                    fg_border = "#716e61",
                    bg_border = "#d5cea3",
                },
            },
            syn = {
                string = "#6f894e",
                variable = "none",
                number = "#b35b79",
                constant = "#cc6d00",
                identifier = "#8d7342",
                parameter = "#e6c384",
                fun = "#4f6fa8",
                statement = "#7b5fa3",
                keyword = "#7b5fa3",
                operator = "#836f4a",
                preproc = "#cc6d00",
                type = "#5f847d",
                regex = "#836f4a",
                deprecated = "#8a8980",
                comment = "#8a8980",
                punct = "#4e8ca2",
                special1 = "#6693bf",
                special2 = "#c84053",
                special3 = "#ec001c",
            },
            vcs = {
                added = "#6e915f",
                removed = "#d7474b",
                changed = "#de9800",
            },
            diff = {
                add = "#b7d0ae",
                delete = "#d9a594",
                change = "#d7e3d8",
                text = "#f9d791",
            },
            diag = {
                error = "#e82424",
                ok = "#6f894e",
                warning = "#e98a00",
                info = "#5a7785",
                hint = "#5e857a",
            },
            term = {},
        }
    end,
}
