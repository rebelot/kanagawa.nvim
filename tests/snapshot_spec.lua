local kanagawa = require("kanagawa")
local spy = require("luassert.spy")

local function map_first_arg(call)
    return vim.trim(call.vals[1]) -- we trim because the argument contains trailing whitespaces that we don't care about
end

describe("snapshots", function()
    it("sets the expected highlight groups", function()
        local vim_cmd = spy.on(vim, "cmd")
        kanagawa.load()
        -- Map the first arguments to vim.cmd to a list
        local lines = vim.tbl_map(map_first_arg, vim_cmd.calls)
        table.sort(lines)
        assert.matches_snapshot_line_by_line(lines, "core_highlights.snapshot")
    end)
end)
