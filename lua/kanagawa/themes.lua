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
}
