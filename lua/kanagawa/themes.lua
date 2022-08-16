local c = require("kanagawa.color")
--TODO: standardize theme color names

---@class ThemeColors
---@field bg KanagawaColors
---@field bg_dim KanagawaColors
---@field bg_dark KanagawaColors
---@field bg_light0 KanagawaColors
---@field bg_light1 KanagawaColors
---@field bg_light2 KanagawaColors
---@field bg_light3 KanagawaColors
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
    ---@param colors KanagawaColors
    light = function(colors)
        ---@type ThemeColors
        return {
            bg = tostring(c(colors.fujiWhite):lighten(1.1):saturate(1.8)),
            bg_dim = tostring(c(colors.fujiWhite):lighten(0.95)),
            bg_dark = tostring(c(colors.fujiWhite):lighten(0.9):saturate(0.8)),
            bg_light0 = tostring(c(colors.oldWhite):lighten(1)),
            bg_light1 = tostring(c(colors.oldWhite):lighten(1.15)),
            bg_light2 = tostring(c(colors.springViolet1)),
            bg_light3 = tostring(c(colors.springViolet1):lighten(0.65)),

            bg_menu = tostring(c(colors.waveBlue1):lighten(3.5):saturate(0.35)),
            bg_menu_sel = tostring(c(colors.waveBlue1):lighten(3.9):saturate(0.5)),

            bg_status = tostring(c(colors.fujiWhite):lighten(0.85):saturate(0.7)),
            bg_visual = tostring(c(colors.waveBlue1):lighten(3.9):saturate(0.25)),
            bg_search = tostring(c(colors.waveBlue2):lighten(2.7)),

            fg_border = colors.sumiInk4,
            fg_dark = colors.sumiInk0,
            fg_reverse = colors.waveBlue1,

            fg_comment = colors.fujiGray,
            fg = tostring(c(colors.sumiInk1):lighten(1.9)),
            fg_menu = tostring(c(colors.sumiInk4):lighten(0.90)),

            co = tostring(c(colors.surimiOrange):lighten(0.5)),
            st = tostring(c(colors.springGreen):lighten(0.5)),
            nu = tostring(c(colors.sakuraPink):lighten(0.5)),
            id = tostring(c(colors.carpYellow):lighten(0.38)),
            fn = tostring(c(colors.crystalBlue):lighten(0.5)),
            sm = tostring(c(colors.oniViolet):lighten(0.5)),
            kw = tostring(c(colors.oniViolet):lighten(0.5)),
            op = tostring(c(colors.boatYellow2):lighten(0.5)),
            pp = tostring(c(colors.surimiOrange):lighten(0.5)),
            ty = tostring(c(colors.waveAqua2):lighten(0.5)),
            sp = tostring(c(colors.springBlue):lighten(0.43)),
            sp2 = tostring(c(colors.waveRed):lighten(0.5)),
            sp3 = tostring(c(colors.peachRed):lighten(0.5)),
            br = tostring(c(colors.springViolet2):lighten(0.5)),
            re = tostring(c(colors.boatYellow2):lighten(0.6)),
            dep = tostring(c(colors.katanaGray):lighten(0.5)),

            diag = {
                error = tostring(c(colors.samuraiRed):lighten(0.7)),
                warning = tostring(c(colors.roninYellow):lighten(0.77):saturate(0.9)),
                info = tostring(c(colors.dragonBlue):lighten(0.7)),
                hint = tostring(c(colors.waveAqua1):lighten(0.7)),
            },

            diff = {
                add = tostring(c(colors.winterGreen):lighten(3.5):saturate(1.1)),
                delete = tostring(c(colors.winterRed):lighten(2.5):saturate(0.8)),
                change = tostring(c(colors.winterBlue):lighten(2.5)),
                text = tostring(c(colors.winterYellow):lighten(2.9):saturate(2.5)),
            },

            git = {
                added = tostring(c(colors.autumnGreen):lighten(1)),
                removed = tostring(c(colors.autumnRed):lighten(1)),
                changed = tostring(c(colors.autumnYellow):lighten(1)),
            },
        }
    end,
}
