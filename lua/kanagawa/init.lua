local M = {}

---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
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
    transparent = false,
    dimInactive = false,
    terminalColors = true,
    colors = { theme = { wave = {}, lotus = {}, dragon = {}, all = {} }, palette = {} },
    ---@type fun(colors: KanagawaColorsSpec): table<string, table>
    overrides = function()
        return {}
    end,
    ---@type { dark: string, light: string }
    background = { dark = "wave", light = "lotus" },
    theme = "wave",
    compile = false,
}

local function check_config(config)
    local err
    return not err
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
---@param theme? string
function M.load(theme)
    local utils = require("kanagawa.utils")

    theme = theme or M.config.background[vim.o.background] or M.config.theme
    M._CURRENT_THEME = theme

    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "kanagawa"
    vim.o.termguicolors = true

    if M.config.compile then
        if utils.load_compiled(theme) then
            return
        end

        M.compile()
        utils.load_compiled(theme)
    else
        local colors = require("kanagawa.colors").setup({ theme = theme, colors = M.config.colors })
        local highlights = require("kanagawa.highlights").setup(colors, M.config)
        require("kanagawa.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
    end
end

function M.compile()
    for theme, _ in pairs(require("kanagawa.themes")) do
        local colors = require("kanagawa.colors").setup({ theme = theme, colors = M.config.colors })
        local highlights = require("kanagawa.highlights").setup(colors, M.config)
        require("kanagawa.utils").compile(theme, highlights, M.config.terminalColors and colors.theme.term or {})
    end
end

vim.api.nvim_create_user_command("KanagawaCompile", function()
    for mod, _ in pairs(package.loaded) do
        if mod:match("^kanagawa%.") then
            package.loaded[mod] = nil
        end
    end
    M.compile()
    vim.notify("Kanagawa: compiled successfully!", vim.log.levels.INFO)
    M.load(M._CURRENT_THEME)
    vim.api.nvim_exec_autocmds("ColorScheme", { modeline = false })
end, {})

return M
