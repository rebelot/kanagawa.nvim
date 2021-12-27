local M = {}

M.colors = require'kanagawa.colors'
M.colors:make_theme()
M.hlgroups = nil

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.g.colors_name = "kanagawa"
    vim.o.termguicolors = true

    local hlgroups = M.hlgroups or require'kanagawa.hlgroups' -- M.hlgroups set by setup()

    for group, colors in pairs(hlgroups) do
        if not vim.tbl_isempty(colors) then
            if colors.link then
                vim.cmd("highlight! link " .. group .. " " .. colors.link)
            else
                local fg = colors.fg and "guifg=" .. colors.fg .. " " or ""
                local bg = colors.bg and "guibg=" .. colors.bg .. " " or ""
                local style = colors.style and "gui=" .. colors.style .. " " or ""
                local guisp = colors.guisp and "guisp=" .. colors.guisp .. " " or ""
                vim.cmd("highlight " .. group .. " " .. fg .. bg .. style .. guisp)
            end
        end
    end
end

M.config = {
    undercurl = true,
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,
    specialException = true,
    transparent = false,
    colors = {},
    overrides = {},
    -- bg_contrast = 'light'
}

function M.setup(config)
    M.config = vim.tbl_extend("force", M.config, config or {}) -- override default config
    local colors = vim.tbl_extend("force", require("kanagawa.colors"), M.config.colors) -- override palette colors
    colors:make_theme() -- generate semantic colors
    colors = vim.tbl_extend("force", colors, M.config.colors) -- override semantic colors
    M.colors = colors -- generate final color table
    M.hlgroups = vim.tbl_extend("force", require("kanagawa.hlgroups"), M.config.overrides)
end

return M
