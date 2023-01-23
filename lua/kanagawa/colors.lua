---@class PaletteColors
local palette_colors = {

    -- Bg Shades
    sumiInk0 = "#16161D",
    sumiInk1 = "#181820",
    sumiInk2 = "#1a1a22",
    sumiInk3 = "#1F1F28",
    sumiInk4 = "#2A2A37",
    sumiInk5 = "#363646",
    sumiInk6 = "#54546D", --fg

    -- Popup and Floats
    waveBlue1 = "#223249",
    waveBlue2 = "#2D4F67",

    -- Diff and Git
    winterGreen = "#2B3328",
    winterYellow = "#49443C",
    winterRed = "#43242B",
    winterBlue = "#252535",
    autumnGreen = "#76946A",
    autumnRed = "#C34043",
    autumnYellow = "#DCA561",

    -- Diag
    samuraiRed = "#E82424",
    roninYellow = "#FF9E3B",
    waveAqua1 = "#6A9589",
    dragonBlue = "#658594",

    -- Fg and Comments
    oldWhite = "#C8C093",
    fujiWhite = "#DCD7BA",
    fujiGray = "#727169",
    springViolet1 = "#938AA9",

    oniViolet = "#957FB8",
    crystalBlue = "#7E9CD8",
    springViolet2 = "#9CABCA",
    springBlue = "#7FB4CA",
    lightBlue = "#A3D4D5", -- unused yet
    waveAqua2 = "#7AA89F", -- improve lightness: desaturated greenish Aqua

    -- waveAqua2  = "#68AD99",
    -- waveAqua4  = "#7AA880",
    -- waveAqua5  = "#6CAF95",
    -- waveAqua3  = "#68AD99",

    springGreen = "#98BB6C",
    boatYellow1 = "#938056",
    boatYellow2 = "#C0A36E",
    carpYellow = "#E6C384",

    sakuraPink = "#D27E99",
    waveRed = "#E46876",
    peachRed = "#FF5D62",
    surimiOrange = "#FFA066",
    katanaGray = "#717C7C",
}

local M = {}
--- Generate colors table:
--- * opts:
---   - colors: Table of personalized colors and/or overrides of existing ones.
---     Defaults to KanagawaConfig.colors.
---   - theme: Use selected theme. Defaults to KanagawaConfig.theme
---     according to the value of 'background' option.
---@param opts? { colors?: KanagawaColorsSpec, theme?: string }
---@return { theme: ThemeColors, palette: PaletteColors}
function M.setup(opts)
    opts = opts or {}
    local tbl_extend = vim.tbl_extend
    local override_colors = opts.colors or require("kanagawa").config.colors
    local theme = opts.theme or require("kanagawa")._CURRENT_THEME -- WARN: this fails if called before kanagawa.load()

    if not theme then
        error("kanagawa.colors.setup(): No theme specified. Either specify a theme or call this funciton after ':colorscheme kanagawa'")
    end

    -- Add to and/or override palette_colors
    local updated_palette_colors = tbl_extend("force", palette_colors, override_colors.palette)

    -- Generate the theme according to the updated palette colors
    local theme_colors = require("kanagawa.themes")[theme](updated_palette_colors)

    -- Add to and/or override theme_colors
    local updated_theme_colors = tbl_extend("force", theme_colors, override_colors.theme)
    -- return palette_colors AND theme_colors

    return {
        theme = updated_theme_colors,
        palette = updated_palette_colors,
    }
end

return M
