-- UI (Pmenu, Float, StatusLine, TabBar, VertSplit, Folded, CursorLine Sidebar?) colors must not be shared with Text colors
-- Visual and Search must be different and unique
-- Comments must be unique
-- Diagnostics and (Git)Diff must be different (and unique?)
-- servono colori super scuri come background per Diff* se non si vuole cambiare fg
-- TODO
-- BUG:

local config = require("kanagawa").config

local palette_ = {
	oldBlack      = "#151D23",

	-- Bg Shades
	inkBlackDark  = "#090618",
	inkBlackM     = "#13121F",
	inkBlackLight = "#1B1A27",
	inkBlack3     = "#54525F",

	-- Statusline
	voidGray      = "#262C47",

	-- Popup and Floats
	deepBlue      = "#223249",
	oceanBlue     = "#2D4F67",

	abyssBlue     = "#1B283B",

	-- Diff and Git
	winterGreen   = "#222F29",
	winterYellow  = "#59594B",
	winterRed     = "#2F2229",
	winterBlue    = "#22222F",
	autumnGreen   = "#76946A",
	tantoRed      = "#C34043",
	carpYellow    = "#DCA561",

	-- Diag
	samuraiRed    = "#E82424",
	autumnYellow  = "#FF9E3B",
	waveAqua      = "#6C968C",
	dragonBlue    = "#658594",

	-- Fg and Comments
    oldWhite      = "#C8C093",
	fujiWhite     = "#DCD7BA",
	fujiGray      = "#616961",
	fujiGray2     = "#636363",
	springGray    = "#8A8CA1",
	springViolet  = "#938AA9",

	springBlue    = "#72A7BC",
	dragonBlue2   = "#7392A0",
	crystalBlue   = "#748DBF",
	waveAqua3     = "#6A9589",
	waveAqua2     = "#799586",
	foamBlue      = "#82A59D",
	springGreen   = "#98BB6C",
	goldYellow    = "#E6C384",
	boatBrown     = "#C0A36E",
	boatBrownDark = "#938056",
	oniViolet     = "#8F6CBB",
	oniViolet2     = "#9575BF",
	geishaPink    = "#A6536D",
	geishaPink3   = "#C56373",
	waveRed       = "#C7516C",
	sakuraPink    = "#D27E99",
	sunsetOrange  = "#E3873A",
	surimiOrange  = "#E3885E",
	EteelGray     = "#717C7C",
}

local palette = {

	-- Bg Shades
	inkBlackDark  = "#13121F",
	inkBlack      = "#1B1A27",
	inkGray       = "#54525F",

	-- Statusline
	voidGray      = "#262C47",

	-- Popup and Floats
	abyssBlue     = "#1B283B",
	waveBlue1     = "#1F2A43",
	waveBlue2     = "#2D4F67",
	waveBlue3     = "#255173",
	deepBlue      = "#223249",

	-- Diff and Git
	winterGreen   = "#222F29",
	winterYellow  = "#59594B",
	winterRed     = "#2F2229",
	winterBlue    = "#22222F",
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
	fujiGray      = "#6B6A61",
	springViolet  = "#938AA9",

	springBlue    = "#72A7BC",
	crystalBlue   = "#748DBF",
	dragonBlue2   = "#7392A0",
	waveAqua2     = "#7AA89F",
	springGreen   = "#98BB6C",
	goldYellow    = "#E6C384",
	boatBrown     = "#C0A36E",
	boatBrownDark = "#938056",
	oniViolet     = "#9575BF",
	geishaPink    = "#A6536D",
	geishaPink3   = "#C56373",
	waveRed       = "#C7516C",
	sakuraPink    = "#D27E99",
	surimiOrange  = "#E3885E",
	steelGray     = "#717C7C",
}

for name, color in pairs(config.colors) do
    palette[name] = color
end

local colors = {
    bg          = palette.inkBlack, -- Default Background
    bg_dark     = palette.inkBlackDark,
    bg_light    = palette.deepBlue,      -- Light Background (Not often used)
    bg_lighter  = palette.inkGray,

    bg_menu     = palette.abyssBlue,
    bg_menu_sel = palette.waveBlue2,

    bg_status   = palette.voidGray,      -- Lighter Background (Used for status bars, line number and folding marks)
    bg_visual   = palette.deepBlue,      -- Selection Background
    bg_search   = palette.waveBlue2,

    fg_border   = palette.waveBlue2,
    fg_dark     = palette.oldWhite,     -- Dark Foreground (Used for status bars)
    fg_reverse  = palette.deepBlue,     -- Dark Foreground (Used for status bars)

    fg_comment  = palette.fujiGray,      -- Comments, Invisibles, Line Highlighting
    fg          = palette.fujiWhite,     -- Default Foreground, Caret, Delimiters, Operators
    -- fg_light   = palette.waveBlue2,     -- Light Foreground (Not often used)

    co = palette.sunsetOrange,  -- Boolean, Constants, XML Attributes, Markup Link Url
    st = palette.springGreen,   -- Strings,
    nu = palette.geishaPink3,    -- Numbers
    id = palette.goldYellow,      -- Identifier
    fn = palette.crystalBlue,      -- Functions, Methods, Attribute IDs, Headings
    sm = palette.oniViolet,     -- Statement: Label, Conditional, Repeat
    kw = palette.oniViolet,     -- Keywords, Exceptions
    -- op = palette.crystalBlue,  -- Operator
    op = palette.boatBrownDark,  -- Operator
    pp = palette.sunsetOrange,  -- PreProc: Include, Define, Macro, PreCondit
    ty = palette.waveAqua2,     -- Type: StroareClass, Structure, Typedef
    sp = palette.springBlue,     -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
    sp2 = palette.geishaPink,   -- Special Variables (cls, self, etc...)
    br = palette.springViolet,       -- TSPunct*
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
        text = palette.winterYellow,
    },
    git = {
        added = palette.autumnGreen,
        removed = palette.tantoRed,
        changed = palette.carpYellow,
    }
}

return {palette, colors}
