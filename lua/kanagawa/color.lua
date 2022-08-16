local function rgb_to_hsl(r, g, b)
    --r, g, b = r/255, g/255, b/255
    local min = math.min(r, g, b)
    local max = math.max(r, g, b)
    local delta = max - min

    local h, s, l = 0, 0, ((min + max) / 2)

    if l > 0 and l < 0.5 then
        s = delta / (max + min)
    end
    if l >= 0.5 and l < 1 then
        s = delta / (2 - max - min)
    end

    if delta > 0 then
        if max == r and max ~= g then
            h = h + (g - b) / delta
        end
        if max == g and max ~= b then
            h = h + 2 + (b - r) / delta
        end
        if max == b and max ~= r then
            h = h + 4 + (r - g) / delta
        end
        h = h / 6
    end

    if h < 0 then
        h = h + 1
    end
    if h > 1 then
        h = h - 1
    end

    return h * 360, s, l
end

local function hsl_to_rgb(h, s, L)
    h = h / 360
    local m1, m2
    if L <= 0.5 then
        m2 = L * (s + 1)
    else
        m2 = L + s - L * s
    end
    m1 = L * 2 - m2

    local function _h2rgb(m1, m2, h)
        if h < 0 then
            h = h + 1
        end
        if h > 1 then
            h = h - 1
        end
        if h * 6 < 1 then
            return m1 + (m2 - m1) * h * 6
        elseif h * 2 < 1 then
            return m2
        elseif h * 3 < 2 then
            return m1 + (m2 - m1) * (2 / 3 - h) * 6
        else
            return m1
        end
    end

    return _h2rgb(m1, m2, h + 1 / 3), _h2rgb(m1, m2, h), _h2rgb(m1, m2, h - 1 / 3)
end

local function hex_to_rgb(hex)
    return {
        tonumber(hex:sub(2, 3), 16) / 255,
        tonumber(hex:sub(4, 5), 16) / 255,
        tonumber(hex:sub(6, 7), 16) / 255,
    }
end

local function rgb_to_hex(r, g, b)
    local buffer = "#"
    for i, v in ipairs({ r, g, b }) do
        buffer = buffer .. string.format("%02x", math.floor(v * 255 + 0.5))
    end
    return buffer
end

local function hex_to_hsl(hex)
    return rgb_to_hsl(unpack(hex_to_rgb(hex)))
end

local function hsl_to_hex(h, s, l)
    return rgb_to_hex(hsl_to_rgb(h, s, l))
end

local Color = {}
local Color_mt = {
    __index = Color,
    __tostring = function(self)
        return hsl_to_hex(self.H, self.S, self.L)
    end,
}

function Color.new(H, S, L)
    if type(H) == "string" and H:sub(1, 1) == "#" and H:len() == 7 then
        H, S, L = hex_to_hsl(H)
    end
    return setmetatable({ H = H, S = S, L = L }, Color_mt)
end

function Color:lighten(r)
    local L = self.L * r
    if L > 1 then
        L = 1
    end
    self.L = L
    return self
end

function Color:saturate(r)
    local S = self.S * r
    if S > 1 then
        S = 1
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

-- function M.lighten(hex, r)
--     h, s, l = rgb_string_to_hsl(hex)
--     return rgb_to_hex(hsl_to_rgb(h, s, l * r))
-- end
--
-- function M.saturate(hex, r)
--     h, s, l = rgb_string_to_hsl(hex)
--     return rgb_to_hex(hsl_to_rgb(h, s * r, l))
-- end

local M = {}
return setmetatable(M, {
    __call = function(_, ...)
        return Color.new(...)
    end,
})
