-- UI (Pmenu, Float, StatusLine, TabBar, VertSplit, Folded, CursorLine Sidebar?) colors must not be shared with Text colors
-- Visual and Search must be different and unique
-- Comments must be unique
-- Diagnostics and (Git)Diff must be different (and unique?)
-- servono colori super scuri come background per Diff* se non si vuole cambiare fg
-- TODO
-- BUG:

local config = require("kanagawa").config

local colors = {
	oldBlack = "#151D23",

	-- Bg Shades
	inkBlackDark = "#090618",
	inkBlackM = "#13121F",
	inkBlackLight = "#1B1A27",
	inkBlack3 = "#54525F",

	-- Statusline
	voidGray = "#262C47",

	-- Popup and Floats
	deepBlue = "#223249",
	oceanBlue = "#2D4F67",

	-- Diff
	autumnGreen = "#76946A",
	tantoRed = "#C34043",
	carpYellow = "#DCA561",

	-- Diag
	samuraiRed = "#E82424",
	autumnYellow = "#FF9E3B",
	waveAqua = "#6C968C",
	dragonBlue = "#658594",

	-- Fg and Comments
	fujiWhite = "#DCD7BA",
	fujiGray = "#616961",

	springBlue = "#72A7BC",
	foamBlue = "#82A59D",
	springGreen = "#98BB6C",
	goldYellow = "#E6C384",
	boatBrown = "#C0A36E",
	boatBrownDark = "#938056",
	oniViolet = "#8F6CBB",
	geishaPink = "#A6536D",
	geishaPink3 = "#C56373",
	sakuraPink = "#D27E99",
	sunsetOrange = "#E3873A",
	steelGray = "#717C7C",
}

for name, color in pairs(config.colors) do
    colors[name] = color
end

colors.fg = colors.fujiWhite
colors.fg_dark = colors.deepBlue
colors.bg = colors.inkBlackLight
colors.bg_light = colors.deepBlue
colors.bg_dark = colors.inkBlackDark

colors.bg_float = colors.deepBlue
colors.float_border = colors.oceanBlue
colors.bg_popup = colors.bg_light
colors.bg_status = colors.voidGray

colors.bg_visual = colors.deepBlue
colors.bg_search = colors.oceanBlue
colors.comment = colors.fujiGray

colors.diag = {
	error = colors.samuraiRed,
	warning = colors.autumnYellow,
	info = colors.dragonBlue,
	hint = colors.waveAqua,
}

colors.diff = {
	add = colors.autumnGreen,
	delete = colors.tantoRed,
	change = colors.carpYellow,
	text = colors.foamBlue,
}

return colors
