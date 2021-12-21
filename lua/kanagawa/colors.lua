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

local colors = {

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
    colors[name] = color
end

colors.bg          = colors.sumiInk1 -- Default Background
colors.bg_dark     = colors.sumiInk0
colors.bg_light0   = colors.sumiInk2
colors.bg_light1   = colors.sumiInk3
colors.bg_light2   = colors.sumiInk4
colors.bg_light3   = colors.springViolet1

    -- bg_menu     = palette.abyssBlue
colors.bg_menu     = colors.waveBlue1
colors.bg_menu_sel = colors.waveBlue2

colors.bg_status   = colors.sumiInk0
colors.bg_visual   = colors.waveBlue1
colors.bg_search   = colors.waveBlue2

colors.fg_border   = colors.sumiInk4
colors.fg_dark     = colors.oldWhite
colors.fg_reverse  = colors.waveBlue1

colors.fg_comment  = colors.fujiGray      -- Comments, Invisibles, Line Highlighting
colors.fg          = colors.fujiWhite     -- Default Foreground, Caret, Delimiters, Operators
-- fg_light   = palette.waveBlue2     -- Light Foreground (Not often used)

colors.co = colors.surimiOrange  -- Boolean, Constants, XML Attributes, Markup Link Url
colors.st = colors.springGreen   -- Strings,
colors.nu = colors.sakuraPink    -- Numbers
colors.id = colors.carpYellow      -- Identifier
colors.fn = colors.crystalBlue      -- Functions, Methods, Attribute IDs, Headings
colors.sm = colors.oniViolet     -- Statement: Label, Conditional, Repeat
colors.kw = colors.oniViolet     -- Keywords, Exceptions
colors.op = colors.boatYellow2  -- Operator
colors.pp = colors.surimiOrange  -- PreProc: Include, Define, Macro, PreCondit
colors.ty = colors.waveAqua2     -- Type: StroareClass, Structure, Typedef
colors.sp = colors.springBlue     -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
colors.sp2 = colors.waveRed   -- Special Variables (cls, self, etc...)
colors.sp3 = colors.peachRed
colors.br = colors.springViolet2       -- TSPunct*
colors.re = colors.boatYellow2     -- Regular Expressions, Escape Characters
colors.dep = colors.katanaGray     -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

colors.diag = {
    error = colors.samuraiRed,
    warning = colors.roninYellow,
    info = colors.dragonBlue,
    hint = colors.waveAqua1,
}

colors.diff = {
    add = colors.winterGreen,
    delete = colors.winterRed,
    change = colors.winterBlue,
    text = colors.winterYellow,
}

colors.git = {
    added = colors.autumnGreen,
    removed = colors.autumnRed,
    changed = colors.autumnYellow,
}


return colors
