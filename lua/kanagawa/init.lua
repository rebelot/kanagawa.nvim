local M = {}

function M.load()
    local hlgroups = require("kanagawa.hlgroups")

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "kanagawa"
	vim.o.termguicolors = true


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
    typeStyle = 'italic',
    transparent = false,
    colors = {},
    overrides = {},
    -- bg_contrast = 'light'
}

function M.setup(opts)
    M.config = vim.tbl_extend("force", M.config, opts or {})
end

return M
