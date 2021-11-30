local hlgroups = require("kanagawa.hlgroups")
local M = {}

function M.load()

	if vim.g.colors_name ~= "kanagawa" then
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

return M
