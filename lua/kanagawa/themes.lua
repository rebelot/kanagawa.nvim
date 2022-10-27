local c = require("kanagawa.color")
--TODO: standardize theme color names

---@class ThemeColors
---@field bg KanagawaColors default background
---@field bg_dim KanagawaColors dimmed background
---@field bg_dark KanagawaColors dark background (float)
---@field bg_light0 KanagawaColors Fold/ColorColumn background
---@field bg_light1 KanagawaColors CursorLine/TabLineSel background
---@field bg_light2 KanagawaColors NonText foreground
---@field bg_light3 KanagawaColors dimmed foreground (Conceal, Folded, TabLine)
---@field bg_menu KanagawaColors
---@field bg_menu_sel KanagawaColors
---@field bg_status KanagawaColors
---@field bg_visual KanagawaColors
---@field bg_search KanagawaColors
---@field fg_border KanagawaColors
---@field fg_dark KanagawaColors
---@field fg_reverse KanagawaColors
---@field fg_comment KanagawaColors
---@field fg KanagawaColors
---@field fg_menu KanagawaColors
---@field co KanagawaColors
---@field st KanagawaColors
---@field nu KanagawaColors
---@field id KanagawaColors
---@field fn KanagawaColors
---@field sm KanagawaColors
---@field kw KanagawaColors
---@field op KanagawaColors
---@field pp KanagawaColors
---@field ty KanagawaColors
---@field sp KanagawaColors
---@field sp2 KanagawaColors
---@field sp3 KanagawaColors
---@field br KanagawaColors
---@field re KanagawaColors
---@field dep KanagawaColors
---@field diag { error: KanagawaColors, warning: KanagawaColors, info: KanagawaColors, hint: KanagawaColors }
---@field diff { add: KanagawaColors, delete: KanagawaColors, change: KanagawaColors, text: KanagawaColors }
---@field git { added: KanagawaColors, removed: KanagawaColors, changed: KanagawaColors }

return {
    ---@param colors KanagawaColors
    default = function(colors)
        ---@type ThemeColors
        return {
            bg = colors.sumiInk1,
            bg_dim = colors.sumiInk1b,
            bg_dark = colors.sumiInk0,
            bg_light0 = colors.sumiInk2,
            bg_light1 = colors.sumiInk3,
            bg_light2 = colors.sumiInk4,
            bg_light3 = colors.springViolet1,

            bg_menu = colors.waveBlue1,
            bg_menu_sel = colors.waveBlue2,

            bg_status = colors.sumiInk0,
            bg_visual = colors.waveBlue1,
            bg_search = colors.waveBlue2,

            fg_border = colors.sumiInk4,
            fg_dark = colors.oldWhite,
            fg_reverse = colors.waveBlue1,

            fg_comment = colors.fujiGray,
            fg = colors.fujiWhite,
            fg_menu = colors.fujiWhite,

            co = colors.surimiOrange,
            st = colors.springGreen,
            nu = colors.sakuraPink,
            id = colors.carpYellow,
            fn = colors.crystalBlue,
            sm = colors.oniViolet,
            kw = colors.oniViolet,
            op = colors.boatYellow2,
            pp = colors.surimiOrange,
            ty = colors.waveAqua2,
            sp = colors.springBlue,
            sp2 = colors.waveRed,
            sp3 = colors.peachRed,
            br = colors.springViolet2,
            re = colors.boatYellow2,
            dep = colors.katanaGray,

            diag = {
                error = colors.samuraiRed,
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

            git = {
                added = colors.autumnGreen,
                removed = colors.autumnRed,
                changed = colors.autumnYellow,
            },
        }
    end,
    dragon = function(colors)
        ---@type ThemeColors
        return {
            bg = "#181616",
            bg_dim = "#1D1C19",
            bg_dark = "#121111",
            bg_light0 = "#282727",
            bg_light1 = "#393836",
            bg_light2 = "#524F4B",
            bg_light3 = "#6E7675",

            bg_menu = colors.waveBlue1,
            bg_menu_sel = colors.waveBlue2,

            bg_status = "#111115",
            bg_visual = colors.waveBlue1,
            bg_search = colors.waveBlue2,

            fg_border = colors.sumiInk4,
            fg_dark = colors.oldWhite,
            fg_reverse = colors.waveBlue1,

            fg_comment = "#737c73",
            fg = "#c5c9c5",
            fg_menu = colors.fujiWhite,

            co = "#b6927b",
            st = "#87a987",
            nu = "#a292a3",
            id = "#a6a69c", --ok
            fn = "#8ba4b0",
            sm = "#8992a7",
            kw = "#8992a7",
            op = "#c4746e",
            pp = "#a99c8b",
            -- ty = "#5B7B79",
            ty = "#8ea4a2",
            sp = "#949fb5",
            sp2 = "#aa9e89",
            sp3 = "#aa9e89",
            br = "#9e9b93",
            re = "#c3746e",
            dep = colors.katanaGray,

            diag = {
                error = colors.samuraiRed,
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

            git = {
                added = colors.autumnGreen,
                removed = colors.autumnRed,
                changed = colors.autumnYellow,
            },
        }
    end,
    ---@param colors KanagawaColors
    light = function(colors)
        ---@type ThemeColors
        return {
            bg = tostring(c(colors.fujiWhite):lighten(1.1):saturate(1.8)),
            bg_dim = tostring(c(colors.fujiWhite):lighten(1.1):saturate(1.5):lighten(0.97)),
            bg_dark = tostring(c(colors.fujiWhite):lighten(0.96):saturate(1.5)),
            bg_light0 = tostring(c(colors.oldWhite):lighten(1.12):saturate(0.99)),
            bg_light1 = tostring(c(colors.oldWhite):lighten(1.15)),
            bg_light2 = tostring(c(colors.springViolet1):lighten(1.1):saturate(0.6)),
            bg_light3 = tostring(c(colors.springViolet1):lighten(0.8)),

            -- bg_menu = tostring(c(colors.waveBlue1):lighten(4):saturate(0.30):hue(1)),
            -- bg_menu = tostring(c(colors.waveBlue1):lighten(3.9):saturate(0.5):hue(1)),
            bg_menu = tostring(c(colors.waveBlue2):lighten(2.65):saturate(0.4):hue(0.95)),
            bg_menu_sel = tostring(c(colors.waveBlue1):lighten(3.55):saturate(0.5):hue(0.95)),

            bg_status = tostring(c(colors.oldWhite):lighten(1.06):saturate(1)),
            -- bg_status = tostring(c(colors.fujiWhite):lighten(1):saturate(1)),
            bg_visual = tostring(c(colors.waveBlue1):lighten(4):saturate(0.20)),
            bg_search = tostring(c(colors.waveBlue2):lighten(2.5):hue(0.9):saturate(0.3)),

            fg_border = tostring(c(colors.oldWhite):lighten(0.6):saturate(0.5)),
            fg_dark = tostring(c(colors.sumiInk1):lighten(2.5):saturate(2.5)),
            fg_reverse = colors.fujiWhite,

            fg_comment = tostring(c(colors.fujiGray):lighten(1.2)),
            fg = tostring(c(colors.sumiInk1):lighten(3.0):saturate(0.9)),
            fg_menu = tostring(c(colors.sumiInk4):lighten(0.90)),

            co = tostring(c(colors.surimiOrange):lighten(0.75)),
            st = tostring(c(colors.springGreen):lighten(0.75)),
            nu = tostring(c(colors.sakuraPink):lighten(0.8):saturate(0.9)),
            id = tostring(c(colors.carpYellow):lighten(0.65):saturate(1.2)),
            fn = tostring(c(colors.crystalBlue):lighten(0.73):saturate(1)),
            sm = tostring(c(colors.oniViolet):lighten(0.8):saturate(1)),
            kw = tostring(c(colors.oniViolet):lighten(0.8):saturate(1)),
            op = tostring(c(colors.boatYellow2):lighten(0.7):saturate(1)),
            pp = tostring(c(colors.surimiOrange):lighten(0.75)),
            ty = tostring(c(colors.waveAqua2):lighten(0.8):saturate(1)),
            sp = tostring(c(colors.springBlue):lighten(0.78):saturate(1.34)),
            sp2 = tostring(c(colors.waveRed):lighten(0.80):saturate(1.0)),
            sp3 = tostring(c(colors.peachRed):lighten(0.8):saturate(1):hue(1)),
            br = tostring(c(colors.springViolet2):lighten(0.7):saturate(0.9)),
            re = tostring(c(colors.boatYellow2):lighten(0.7):saturate(1)),
            dep = tostring(c(colors.katanaGray):lighten(0.5)),

            diag = {
                error = tostring(c(colors.samuraiRed):lighten(1)),
                warning = tostring(c(colors.roninYellow):lighten(0.9):saturate(1)),
                info = tostring(c(colors.dragonBlue):lighten(0.9)),
                hint = tostring(c(colors.waveAqua1):lighten(0.9)),
            },

            diff = {
                add = tostring(c(colors.winterGreen):lighten(4):saturate(0.9)),
                delete = tostring(c(colors.winterRed):lighten(3.9):saturate(1.3):hue(0.08)),
                change = tostring(c(colors.winterBlue):lighten(5.8):saturate(0.5):hue(0.5)),
                text = tostring(c(colors.winterYellow):lighten(3):saturate(4)),
            },
            git = {
                added = tostring(c(colors.autumnGreen):lighten(0.97):saturate(1.2)),
                removed = tostring(c(colors.autumnRed):lighten(1.1):saturate(1)),
                changed = tostring(c(colors.autumnYellow):lighten(0.95):saturate(1.5)),
            },
        }
    end,
}
