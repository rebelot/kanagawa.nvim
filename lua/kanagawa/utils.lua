local M = {}
local PATH_SEP = vim.loop.os_uname().version:match("Windows") and "\\" or "/"

local KANAGAWA_COMPILED = function(theme)
    return table.concat({vim.fn.stdpath("state"), "kanagawa", theme .. "_compiled.lua"}, PATH_SEP)
end

---@return string theme
function M.get_theme_from_bg_opt()
    local config = require("kanagawa").config
    return config.theme[vim.o.background] or config.theme.default
end

---@param theme string
---@param highlights table
function M.compile(theme, highlights)
    vim.loop.fs_mkdir(vim.fn.stdpath("state") .. PATH_SEP .. "kanagawa", 448)

    local fname = KANAGAWA_COMPILED(theme)
    local file, err = io.open(fname, "wb")
    if not file or err then
        vim.notify("Kanagawa: Error writing " .. fname .. ":\n" .. err, vim.log.levels.ERROR)
        return
    end

    local lines = {
        "require'kanagawa'.compiled = string.dump(function()",
        "local nvim_set_hl = vim.api.nvim_set_hl",
    }
    local inspect = vim.inspect
    for hl, spec in pairs(highlights) do
        if next(spec) then
            table.insert(lines, ('nvim_set_hl(0, "%s", %s)'):format(hl, inspect(spec):gsub("%s", "")))
        end
    end
    table.insert(lines, "end)")

    local blob = table.concat(lines, "\n")
    assert(loadstring(blob, "="))()
    file:write(require("kanagawa").compiled)
    file:close()
end

---@param theme string
---@return boolean status
function M.load_compiled(theme)
    local f = loadfile(KANAGAWA_COMPILED(theme))
    if f then
        f()
        return true
    end
    return false
end

return M
