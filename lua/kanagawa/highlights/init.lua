local M = {}

---@param termcolors ColorSpec[]
local function setup_terminal_colors(termcolors)
    local g = vim.g
    for i = 1, 18 do
        g["terminal_color_" .. i - 1] = termcolors[i]
    end
end

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config

    local highlights = {}
    for _, highlight in ipairs({ "editor", "syntax", "treesitter", "lsp", "plugins" }) do
        local mod = require("kanagawa.highlights." .. highlight)
        for hl, spec in pairs(mod.setup(colors, config)) do
            highlights[hl] = spec
        end
    end

    for hl, spec in pairs(config.overrides(colors)) do
        if highlights[hl] and next(spec) then
            highlights[hl].link = nil
        end
        highlights[hl] = vim.tbl_extend("force", highlights[hl] or {}, spec)
    end

    if config.terminalColors then
        setup_terminal_colors(colors.theme.term)
    end

    return highlights
end

return M
