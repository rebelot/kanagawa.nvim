local kanagawa = require("kanagawa")
local spy = require("luassert.spy")

describe("config", function()
    it("merges overrides with default highlight properties", function()
        local vim_cmd = spy.on(vim, "cmd")
        kanagawa.setup({
            overrides = {
                Comment = { fg = "#00aa00" },
            },
        })
        kanagawa.load()
        assert.spy(vim_cmd).was_called_with("highlight Comment guifg=#00aa00 gui=italic ")
    end)
end)
