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
    sumiInk0      = "#16161D",
    sumiInk1      = "#1F1F28",
    sumiInk2      = "#2A2A37",
    sumiInk3      = "#363646",
    sumiInk4      = "#54546D",

	-- Popup and Floats
	waveBlue1     = "#223249",
	waveBlue2     = "#2D4F67",

	-- Diff and Git
	winterGreen   = "#2B3328",
	winterYellow  = "#49443C",
	winterRed     = "#43242B",
	winterBlue    = "#252535",
	autumnGreen   = "#76946A",
	autumnRed     = "#C34043",
	autumnYellow  = "#DCA561",

	-- Diag
	samuraiRed    = "#E82424",
	roninYellow   = "#FF9E3B",
	waveAqua1     = "#6A9589",
	dragonBlue    = "#658594",

	-- Fg and Comments
    oldWhite      = "#C8C093",
	fujiWhite     = "#DCD7BA",
	fujiGray      = "#727169",
	springViolet1 = "#938AA9",

	oniViolet     = "#957FB8",
	crystalBlue   = "#7E9CD8",
	springViolet2 = "#9CABCA",
	springBlue    = "#7FB4CA",
	lightBlue     = "#A3D4D5", -- figo x type o operator
	waveAqua2     = "#7AA89F",

	-- waveAqua2     = "#68AD99",
	-- waveAqua4     = "#7AA880",
	-- waveAqua5     = "#6CAF95",
	-- waveAqua3     = "#68AD99",

	springGreen   = "#98BB6C",
	boatYellow1   = "#938056",
	boatYellow2   = "#C0A36E",
	carpYellow    = "#E6C384",

	sakuraPink    = "#D27E99",
	waveRed       = "#E46876",
	peachRed      = "#FF5D62",
	surimiOrange  = "#FFA066",
	katanaGray    = "#717C7C",
}

for name, color in pairs(config.colors) do
    palette[name] = color
end

local colors = {
    bg          = palette.sumiInk1, -- Default Background
    bg_dark     = palette.sumiInk0,
    bg_light0   = palette.sumiInk2,
    bg_light1   = palette.sumiInk3,
    bg_light2   = palette.sumiInk4,
    bg_light3   = palette.springViolet1,

    -- bg_menu     = palette.abyssBlue,
    bg_menu     = palette.waveBlue1,
    bg_menu_sel = palette.waveBlue2,

    bg_status   = palette.sumiInk0,
    bg_visual   = palette.waveBlue1,
    bg_search   = palette.waveBlue2,

    fg_border   = palette.sumiInk4,
    fg_dark     = palette.oldWhite,
    fg_reverse  = palette.waveBlue1,

    fg_comment  = palette.fujiGray,      -- Comments, Invisibles, Line Highlighting
    fg          = palette.fujiWhite,     -- Default Foreground, Caret, Delimiters, Operators
    -- fg_light   = palette.waveBlue2,     -- Light Foreground (Not often used)

    co = palette.surimiOrange,  -- Boolean, Constants, XML Attributes, Markup Link Url
    st = palette.springGreen,   -- Strings,
    nu = palette.sakuraPink,    -- Numbers
    id = palette.carpYellow,      -- Identifier
    fn = palette.crystalBlue,      -- Functions, Methods, Attribute IDs, Headings
    sm = palette.oniViolet,     -- Statement: Label, Conditional, Repeat
    kw = palette.oniViolet,     -- Keywords, Exceptions
    op = palette.boatYellow2,  -- Operator
    pp = palette.surimiOrange,  -- PreProc: Include, Define, Macro, PreCondit
    ty = palette.waveAqua2,     -- Type: StroareClass, Structure, Typedef
    sp = palette.springBlue,     -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
    sp2 = palette.waveRed,   -- Special Variables (cls, self, etc...)
    sp3 = palette.peachRed,
    br = palette.springViolet2,       -- TSPunct*
    re = palette.boatYellow2,     -- Regular Expressions, Escape Characters
    dep = palette.katanaGray,     -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

    diag = {
        error = palette.samuraiRed,
        warning = palette.roninYellow,
        info = palette.dragonBlue,
        hint = palette.waveAqua1,
    },
    diff = {
        add = palette.winterGreen,
        delete = palette.winterRed,
        change = palette.winterBlue,
        text = palette.winterYellow,
    },
    git = {
        added = palette.autumnGreen,
        removed = palette.autumnRed,
        changed = palette.autumnYellow,
    }
}

return {palette, colors}
