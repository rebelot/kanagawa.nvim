local M = {}

function M.make_highlights(hlgroups)
    local nvim_set_hl = vim.api.nvim_set_hl
    vim.cmd("highlight Normal guibg=" .. hlgroups.Normal.bg .. " guifg=" .. hlgroups.Normal.fg)
    hlgroups.Normal = nil
    for group, colors in pairs(hlgroups) do
        if next(colors) then
            nvim_set_hl(0, group, colors)
        end
    end
end

function M.get_theme_from_bg_opt()
    local config = require("kanagawa").config
    return config.theme[vim.o.background] or config.theme.default
end

return M
