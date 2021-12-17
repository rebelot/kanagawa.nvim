-- UI (Pmenu, Float, StatusLine, TabBar, VertSplit, Folded, CursorLine Sidebar?) colors must not be shared with Text colors
-- Visual and Search must be different and unique
-- Comments must be unique
-- Diagnostics and (Git)Diff must be different (and unique?)
-- servono colori super scuri come background per Diff* se non si vuole cambiare fg
-- TODO
-- [x] rifare comment come interpolazione tra fujiwhite e background
-- [x] rivedere textchanged
-- [ ] floatborder e rivedere sfumature di blu UI (menu/menusel)
-- [ ] revisione (e.g. sunsetOrange, oniViolet, waveAqua, scale di blu (non-ui), geisha/sakura
-- [ ] rivedere i contrasti di cmp-
-- [ ] final review & plugin support
-- BUG:

local config = require("kanagawa").config

local palette = {

	-- Bg Shades
    neutralDark     = "#16161D",
    neutral         = "#1F1F28",
    neutral1        = "#2A2A37",
    neutral2        = "#363646",
    neutral3        = "#54546D",

	-- Statusline
	-- voidGray      = "#262C47",

	-- Popup and Floats
	abyssBlue     = "#1B283B",
	waveBlue1     = "#1F2A43",
	waveBlue2     = "#2D4F67",
	waveBlue3     = "#255173",
	deepBlue      = "#223249",

	-- Diff and Git
	winterGreen   = "#2B3328",
	-- winterYellow  = "#423D36",
	winterYellow2 = "#49443C",
	winterRed     = "#43242B",
	winterBlue    = "#252535",
	autumnGreen   = "#76946A",
	tantoRed      = "#C34043",
	carpYellow    = "#DCA561",

	-- Diag
	samuraiRed    = "#E82424",
	sunsetOrange  = "#E3873A",
	autumnYellow  = "#FF9E3B",
	waveAqua1     = "#6A9589",
	dragonBlue    = "#658594",

	-- Fg and Comments
    oldWhite      = "#C8C093",
	fujiWhite     = "#DCD7BA",
	fujiGray      = "#727169",
	springViolet  = "#938AA9",

	-- springBlue    = "#72A7BC",
	-- dragonBlue2   = "#7392A0",
	-- waveAqua2     = "#7AA89F",
	-- crystalBlue2  = "#7E9CD8",
	-- oniViolet     = "#9575BF",
	-- geishaPink    = "#A6536D",
	-- geishaPink2   = "#B3667E",
	-- geishaPink3   = "#C56373",
	-- waveRed       = "#C7516C",
	-- waveRed2       = "#D75E76",


	-- crystalBlue   = "#748DBF",
	-- oniViolet2    = "#A486CE",

	oniViolet3    = "#957FB8",
	crystalBlue2  = "#7E9CD8",
	-- springViolet2 = "#90A6D7",
	springViolet3 = "#9CABCA",
	springBlue2   = "#7FB4CA",
	lightBlue     = "#A3D4D5", -- figo x type o operator
	waveAqua2     = "#7AA89F",
	-- waveAqua2     = "#68AD99",


	-- waveAqua4     = "#7AA880",
	-- waveAqua5     = "#6CAF95",
	-- waveAqua3     = "#68AD99",

	-- peach = "#F0AB86",
	peach = "#FF5D62",

	springGreen   = "#98BB6C",

	goldYellow    = "#E6C384",
	boatBrown     = "#C0A36E",
	boatBrownDark = "#938056",

	sakuraPink    = "#D27E99",
	waveRed3      = "#E46876",
	surimiOrange2 = "#FFA066",
	steelGray     = "#717C7C",
}

for name, color in pairs(config.colors) do
    palette[name] = color
end

local colors = {
    bg          = palette.neutral, -- Default Background
    bg_dark     = palette.neutralDark,
    bg_light0   = palette.neutral1,
    bg_light1   = palette.neutral2,
    bg_light2   = palette.neutral3,
    bg_light3   = palette.springViolet,
    -- bg_light3   = palette.inkGray,


    -- bg_menu     = palette.abyssBlue,
    bg_menu     = palette.deepBlue,
    bg_menu_sel = palette.waveBlue2,

    bg_status   = palette.neutralDark,
    bg_visual   = palette.deepBlue,
    bg_search   = palette.waveBlue2,

    fg_border   = palette.neutral3,
    fg_dark     = palette.oldWhite,
    fg_reverse  = palette.deepBlue,

    fg_comment  = palette.fujiGray,      -- Comments, Invisibles, Line Highlighting
    fg          = palette.fujiWhite,     -- Default Foreground, Caret, Delimiters, Operators
    -- fg_light   = palette.waveBlue2,     -- Light Foreground (Not often used)

    co = palette.surimiOrange2,  -- Boolean, Constants, XML Attributes, Markup Link Url
    st = palette.springGreen,   -- Strings,
    nu = palette.sakuraPink,    -- Numbers
    id = palette.goldYellow,      -- Identifier
    fn = palette.crystalBlue2,      -- Functions, Methods, Attribute IDs, Headings
    sm = palette.oniViolet3,     -- Statement: Label, Conditional, Repeat
    kw = palette.oniViolet3,     -- Keywords, Exceptions
    -- kw = palette.dragonBlue,     -- Keywords, Exceptions
    -- op = palette.crystalBlue,  -- Operator
    -- op = palette.boatBrownDark,  -- Operator
    op = palette.boatBrown,  -- Operator
    -- op = palette.lightBlue,  -- Operator
    -- op = palette.peach,
    -- op = palette.waveRed3,
    pp = palette.surimiOrange2,  -- PreProc: Include, Define, Macro, PreCondit
    -- ty = palette.waveAqua2,     -- Type: StroareClass, Structure, Typedef
    ty = palette.waveAqua2,     -- Type: StroareClass, Structure, Typedef
    -- ty = palette.peach,     -- Type: StroareClass, Structure, Typedef
    -- sp = palette.springBlue,     -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
    sp = palette.springBlue2,     -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
    -- sp2 = palette.geishaPink,   -- Special Variables (cls, self, etc...)
    sp2 = palette.waveRed3,   -- Special Variables (cls, self, etc...)
    sp3 = palette.peach,
    -- br = palette.springViolet2,       -- TSPunct*
    br = palette.springViolet3,       -- TSPunct*
    re = palette.boatBrown,     -- Regular Expressions, Escape Characters
    dep = palette.steelGray,     -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

    diag = {
        error = palette.samuraiRed,
        warning = palette.autumnYellow,
        info = palette.dragonBlue,
        hint = palette.waveAqua1,
    },
    diff = {
        add = palette.winterGreen,
        delete = palette.winterRed,
        change = palette.winterBlue,
        text = palette.winterYellow2,
    },
    git = {
        added = palette.autumnGreen,
        removed = palette.tantoRed,
        changed = palette.carpYellow,
    }
}

return {palette, colors}
