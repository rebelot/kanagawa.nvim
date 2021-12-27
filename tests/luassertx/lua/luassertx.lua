local assert = require("luassert")
local Path = require("plenary.path")

local SnapshotMismatch = {}
SnapshotMismatch.__index = SnapshotMismatch

---@param snapshot_fixture string The fixture file.
function SnapshotMismatch:new(snapshot_fixture)
    return setmetatable({
        snapshot_fixture = snapshot_fixture,
        misses = {},
    }, SnapshotMismatch)
end

function SnapshotMismatch:size()
    return #self.misses
end

---@param line_no number The line number of the mismatch in the fixture file.
---@param expected_val string
---@param provided_val string
function SnapshotMismatch:add(line_no, expected_val, provided_val)
    self.misses[#self.misses + 1] = {
        line_no = line_no,
        expected_val = expected_val,
        provided_val = provided_val,
    }
end

function SnapshotMismatch:__tostring()
    if #self.misses == 0 then
        return "Snapshot matches"
    end
    return table.concat(
        vim.tbl_map(function(miss)
            return string.format(
                "Snapshot mismatch on line %d:\n\tExpected<%q>\n\tReceived<%q>",
                miss.line_no,
                miss.expected_val,
                miss.provided_val or ""
            )
        end, self.misses),
        "\n"
    )
end

---Provides a nicer snapshot file matcher implementation with better
---error messaging than - the builtin "assert.equal" and the likes.
local function matches_snapshot_line_by_line(state, arguments)
    local provided_value = arguments[1]
    local snapshot_fixture = arguments[2]
    local snapshot = Path:new({ vim.loop.cwd(), "tests", "fixtures", snapshot_fixture }):read()
    local trimmed_snapshot = snapshot:gsub("\n$", "") -- remove trailing newline in fixture file
    local misses = SnapshotMismatch:new(snapshot_fixture)
    for line_no, line in ipairs(vim.split(trimmed_snapshot, "\n")) do
        if provided_value[line_no] == nil then
            misses:add(line_no, line, provided_value[line_no])
            state.failure_message = misses
            return false
        end
        if provided_value[line_no] ~= line then
            misses:add(line_no, line, provided_value[line_no])
        end
    end
    if misses:size() > 0 then
        state.failure_message = misses
        return false
    else
        return true
    end
end

assert:register("assertion", "matches_snapshot_line_by_line", matches_snapshot_line_by_line)
