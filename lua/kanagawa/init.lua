local M = {}
---@alias Color string|integer
---@alias ColorTable table<string, Color>
---@alias KanagawaColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias KanagawaColors { palette: PaletteColors, theme: ThemeColors }

--- default config
---@class KanagawaConfig
M.config = {
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true },
    specialReturn = true,
    specialException = true,
    transparent = false,
    dimInactive = false,
    terminalColors = true,
    ---@type KanagawaColorsSpec
    colors = { theme = {}, palette = {} },
    ---@type fun(colors: KanagawaColorsSpec): table<string, table>
    overrides = function()
        return {}
    end,
    ---@type { dark: string, light: string, default: string}
    theme = { dark = "wave", light = "lotus", default = "wave" },
}

local function check_config(config)
    local any
    if config.overrides and type(config.overrides) ~= "function" then
        any = true
        vim.notify(
            [[Kanagawa: config.overrides must be a function. fun(colors: KanagawaColors): OverridesTable]],
            vim.log.levels.ERROR
        )
    end

    if config.theme and type(config.theme) ~= "table" then
        any = true
        vim.notify(
            [[Kanagawa: config.theme must be a table. { dark: string, light: string, default: string }]],
            vim.log.levels.ERROR
        )
    end

    if config.colors then
        for key, _ in pairs(config.colors) do
            if key ~= "palette" and key ~= "theme" then
                any = true
                vim.notify(
                    ([[Kanagawa: colors "%s" is not a valid key. Valid keys are 'palette' and 'theme'.]]):format(key),
                    vim.log.levels.ERROR
                )
            end
        end
    end
    return not any
end

--- update global configuration with user settings
---@param config? KanagawaConfig user configuration
function M.setup(config)
    if check_config(config) then
        M.config = vim.tbl_deep_extend("force", M.config, config or {})
    else
        vim.notify("Kanagawa: Errors found while loading user config. Using default config.", vim.log.levels.ERROR)
    end
end

--- load the colorscheme
function M.load(theme)
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "kanagawa"
    vim.o.termguicolors = true

    local colors = require("kanagawa.colors").setup({ theme = theme })
    local highlights = require("kanagawa.highlights").setup(colors, M.config)

    require("kanagawa.utils").make_highlights(highlights)
end

return M
