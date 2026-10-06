-- Minimal plist encoder for tmTheme generation (UTF-8, no binary)
-- Adapted from Tokyonight.nvim and VSCode theme exporters

local M = {}

local function escape(str)
	return str:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;")
end

local function encode_node(node, indent)
	indent = indent or "  "
	local xml = {}

	if type(node) == "string" then
		table.insert(xml, "<string>" .. escape(node) .. "</string>")
	elseif type(node) == "number" then
		table.insert(xml, "<real>" .. tostring(node) .. "</real>")
	elseif type(node) == "boolean" then
		table.insert(xml, node and "<true/>" or "<false/>")
	elseif type(node) == "table" then
		-- Detect if it's an array or dictionary
		local is_array = #node > 0
		if is_array then
			table.insert(xml, "<array>")
			for _, item in ipairs(node) do
				local child = encode_node(item, indent .. "  ")
				for _, line in ipairs(child) do
					table.insert(xml, indent .. line)
				end
			end
			table.insert(xml, "</array>")
		else
			table.insert(xml, "<dict>")
			for k, v in pairs(node) do
				table.insert(xml, indent .. "<key>" .. escape(k) .. "</key>")
				local child = encode_node(v, indent .. "  ")
				for _, line in ipairs(child) do
					table.insert(xml, indent .. line)
				end
			end
			table.insert(xml, "</dict>")
		end
	end
	return xml
end

function M.encode(tbl)
	local lines = {
		'<?xml version="1.0" encoding="UTF-8"?>',
		'<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">',
		'<plist version="1.0">',
	}
	vim.list_extend(lines, encode_node(tbl, "  "))
	table.insert(lines, "</plist>")
	return table.concat(lines, "\n")
end

return M
