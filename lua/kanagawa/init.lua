local M = {}

local function set_highlights(hlgroups)
    vim.cmd("highlight Normal guibg=" .. hlgroups.Normal.bg .. " guifg=" .. hlgroups.Normal.fg)
    hlgroups.Normal = nil
    for group, colors in pairs(hlgroups) do
        if not vim.tbl_isempty(colors) then
            vim.api.nvim_set_hl(0, group, colors)
        end
    end
end

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
    globalStatus = false,
    terminalColors = true,
    ---@type KanagawaColors
    colors = {},
    ---@type KanagawaColors
    overrides = {},
    theme = "default",
}

--- update global configuration with user settings
---@param config KanagawaConfig? user configuration
function M.setup(config)
    M.config = vim.tbl_extend("force", M.config, config or {})
end

--- load the colorscheme
function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "kanagawa"
    vim.o.termguicolors = true

    if vim.o.background == "light" then
        M.config.theme = "light"
    elseif vim.o.background == "dark" then
        M.config.theme = "default"
    end

    local colors = require("kanagawa.colors").setup()
    local hlgroups = require("kanagawa.hlgroups").setup(colors)

    set_highlights(hlgroups)
end

return M
