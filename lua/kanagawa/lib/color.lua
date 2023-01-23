local hsluv = require("kanagawa.lib.hsluv")

---@class HSLuvColor
local Color = {}
local Color_mt = {
    __index = Color,
    __tostring = function(self)
        return self:to_hex()
    end,
}

local function none_to_hex()
    return "NONE"
end

---Create a new HSLuv color object from a RGB hex string
---@param hex string Hex color
---@return HSLuvColor
function Color.new(hex)
    if hex:lower() == "none" then
        return setmetatable({ H = 0, S = 0, L = 0, to_hex = none_to_hex }, Color_mt)
    end
    local H, S, L = unpack(hsluv.hex_to_hsluv(hex))
    return setmetatable({ H = H, S = S, L = L }, Color_mt)
end

function Color:to_rgb()
    return hsluv.hsluv_to_rgb({ self.H, self.S, self.L })
end

function Color:to_hex()
    return hsluv.hsluv_to_hex({ self.H, self.S, self.L })
end

local function blendRGB(a, b, r)
    local c = {}
    for i = 1, 3 do
        c[i] = math.sqrt((1 - r) * math.pow(a[i], 2) + r * math.pow(b[i], 2))
    end
    return c
end

--- Blend Color with another color (hex)
---@param b string Hex color
---@param r number Blend ratio [0, 1]
---@return HSLuvColor
function Color:blend(b, r)
    if b:lower() == "none" then
        return self
    end
    local c = blendRGB(self:to_rgb(), hsluv.hex_to_rgb(b), r)
    self.H, self.S, self.L = unpack(hsluv.rgb_to_hsluv(c))
    return self
end

---@param r number Brighten ratio [-1, 1]
---@param bg? string background color, if light, r = -r
---@return HSLuvColor
function Color:brighten(r, bg)
    if bg and bg:lower() == "none" then
        return self
    end
    local bg_lightness = bg and hsluv.hex_to_hsluv(bg)[3] or 0
    r = bg_lightness > 50 and -r or r

    local lspace = r > 0 and 100 - self.L or self.L
    self.L = self.L + lspace * r
    return self
end

---@param r number Saturate ratio [-1, 1]
---@return HSLuvColor
function Color:saturate(r)
    local lspace = r > 0 and 100 - self.S or self.S
    self.S = self.S + lspace * r
    return self
end

local M = {}
return setmetatable(M, {
    __call = function(_, ...)
        return Color.new(...)
    end,
})
