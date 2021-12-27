local colors = require("kanagawa").colors

local kanagawa = {}

kanagawa.normal = {
  a = { bg = colors.crystalBlue, fg = colors.bg_dark },
  b = { bg = colors.winterBlue, fg = colors.crystalBlue },
  c = { bg = colors.bg_light0, fg = colors.fg },
}

kanagawa.insert = {
  a = { bg = colors.autumnGreen, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.autumnGreen },
}

kanagawa.command = {
  a = { bg = colors.boatYellow2, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.boatYellow2 },
}

kanagawa.visual = {
  a = { bg = colors.oniViolet, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.oniViolet },
}

kanagawa.replace = {
  a = { bg = colors.autumnRed, fg = colors.bg_dark },
  b = { bg = colors.bg, fg = colors.autumnRed },
}

kanagawa.inactive = {
  a = { bg = colors.bg_status, fg = colors.crystalBlue },
  b = { bg = colors.bg_status, fg = colors.fujiGray, gui = "bold" },
  c = { bg = colors.bg_status, fg = colors.fujiGray },
}

if vim.g.kanagawa_lualine_bold then
  for _, mode in pairs(kanagawa) do
    mode.a.gui = "bold"
  end
end

return kanagawa
