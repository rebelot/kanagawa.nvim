local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {
    tmTheme = {ext = "tmTheme", url = "https://www.sublimetext.com/docs/color_schemes_tmtheme.html", label = "Sublime Text"},
}

local function write(str, fileName)
    print("[write] extras/" .. fileName)
    vim.fn.mkdir(vim.fs.dirname("extras/" .. fileName), "p")
    local file = io.open("extras/" .. fileName, "w")
    file:write(str)
    file:close()
end

function M.read_file(file)
    local fd = assert(io.open(file, "r"))
    ---@type string
    local data = fd:read("*a")
    fd:close()
    return data
end

function M.write_file(file, contents)
    local fd = assert(io.open(file, "w+"))
    fd:write(contents)
    fd:close()
end

function M.setup()
    -- map of style to style name
    local themes = {
        wave = " Wave",
        dragon = " Dragon",
        lotus = " Lotus",
    }

    for extra, info in pairs(M.extras) do
        package.loaded["kanagawa.extra." .. extra] = nil
        local plugin = require("kanagawa.extra." .. extra)
        for theme, theme_name in pairs(themes) do
            local colors = require("kanagawa.colors").setup({ theme = theme }).theme
            local fname = "Kanagawa" .. theme_name .. "." .. info.ext
            colors["_theme_name"] = "Kanagawa" .. theme_name
            colors["_theme_class"] = "theme." .. (theme == "lotus" and "light" or "dark") .. ".kanagawa"
            write(plugin.generate(colors), fname)
        end
    end
end

return M
