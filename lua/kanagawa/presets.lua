return {
    telescopeBox = function(colors)
        local theme = colors.theme
        return {
            TelescopeTitle = { fg = theme.ui.bg_p1, bold = true },

            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },

            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },

            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
            TreesitterContext = { link = "Folded" },
        }
    end,
    pmenu1 = function(colors)
        local theme = colors.theme
        return {
            Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
            PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
            PmenuSbar = { bg = theme.ui.bg_m1 },
            PmenuThumb = { bg = theme.ui.bg_p2 },
        }
    end,
    with = function(self, colors, user, ...)
        local out = {}
        user = user or {}
        for _, preset in ipairs({ ... }) do
            if self[preset] then
                out = vim.tbl_extend("keep", user, self[preset](colors), out)
            end
        end
        return out
    end
}
