local hsluv = require("kanagawa.lib.hsluv")

local Color = {}
local Color_mt = {
    __index = Color,
    __tostring = function(self)
        return hsluv.hsluv_to_hex({ self.H, self.S, self.L })
    end,
}

function Color.new(hex_or_tuple)
    local H, S, L
    if type(hex_or_tuple) == "string" then
        H, S, L = unpack(hsluv.hex_to_hsluv(hex_or_tuple))
    end
    return setmetatable({ H = H, S = S, L = L }, Color_mt)
end

local function blend(a, b, t)
    local c = {}
    for i = 1, 3 do
        c[i] = math.sqrt((1 - t) * a[i] * a[i] + t * b[i] * b[i])
    end
    return c
end

function Color:blend(b, t)
    b = hsluv.hex_to_rgb(b)
    local a = hsluv.hsluv_to_rgb({ self.H, self.S, self.L })
    local c = blend(a, b, t)
    self.H, self.S, self.L = unpack(hsluv.rgb_to_hsluv(c))
    return self
end

function Color:lighten(r)
    local L = self.L * r
    if L > 100 then
        L = 100
    end
    self.L = L
    return self
end

function Color:saturate(r)
    local S = self.S * r
    if S > 100 then
        S = 100
    end
    self.S = S
    return self
end

function Color:hue(r)
    local H = self.H * r
    if H > 360 then
        H = 360
    end
    self.H = H
    return self
end

local M = {}
return setmetatable(M, {
    __call = function(_, ...)
        return Color.new(...)
    end,
})
