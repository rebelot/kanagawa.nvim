-- Generate all Kanagawa theme variants as .tmTheme files
-- Based on tokyo night exporter logic, extended for Markdown/YAML/etc.

local plist = require("kanagawa.extra.plist")
local Path = require("plenary.path")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string}>
-- stylua: ignore
M.extras = {
    tmTheme = {ext = "tmTheme", url = "https://www.sublimetext.com/docs/color_schemes_tmtheme.html", label = "Sublime Text"},
}

---@param style string
---@param theme table<string, table>
local function generate_tmtheme(style, theme)
	---@type table<string, string[]>
	local scopes = {
		Comment = { "comment", "markup.quote" },
		Constant = { "constant", "markup.bold", "markup.italic", "markup.raw.inline" },
		String = {
			"string",
			"meta.structure.dictionary.value.json string.quoted.double.json",
			"source.yaml string.unquoted",
		},
		Number = { "constant.numeric" },
		Boolean = { "constant.language.boolean" },
		Identifier = {
			"variable",
			"support.type.property-name.yaml",
			"support.type.property-name.toml",
			"support.type.property-name.table.toml",
			"support.type.property-name.array.toml",
		},
		Keyword = { "keyword", "storage" },
		Function = { "entity.name.function", "meta.link.inline.description" },
		Statement = { "keyword.control" },
		Type = { "support.type", "entity.name.type" },
		Special = { "markup.underline.link.markdown", "markup.raw.code-fence" },
		Operator = {
			"keyword.operator",
			"markup.list",
			"punctuation.definition.string.begin.json",
			"punctuation.definition.string.end.json",
			"punctuation.support.type.property-name.toml",
		},
		Tag = { "entity.name.tag" },
		Attribute = { "entity.other.attribute-name" },
		HtmlTag = { "entity.name.tag", "entity.name.tag.html", "meta.tag.js", "meta.tag.jsx", "entity.name.tag.jsx" },
		HtmlAttribute = {
			"entity.other.attribute-name",
			"entity.other.attribute-name.html",
			"variable.other.attribute.jsx",
		},
		Title = { "entity.name.section", "punctuation.definition.heading" },
	}

	local items = {
		{
			settings = {
				background = theme.palette.sumiInk1,
				foreground = theme.palette.fujiWhite,
				caret = theme.palette.oldWhite,
				invisibles = theme.palette.sumiInk4,
				lineHighlight = theme.palette.waveBlue2,
				selection = theme.palette.waveBlue2,
				selectionBorder = theme.palette.sumiInk2,
				gutterForeground = theme.palette.sumiInk4,
			},
		},
	}

	local highlights = require("kanagawa.highlights.syntax").setup(theme)
	local fallback = {
		HtmlTag = "Function",
		HtmlAttribute = "Identifier",
		Tag = "Function",
		Attribute = "Identifier",
	}
	for group, scope in pairs(scopes) do
		local hl = highlights[group] or highlights[fallback[group]]
		if hl and hl.fg then
			table.insert(items, {
				name = group,
				scope = table.concat(scope, ", "),
				settings = { foreground = hl.fg },
			})
		end
	end

	return plist.encode({
		name = "Kanagawa " .. style:sub(1, 1):upper() .. style:sub(2),
		uuid = vim.fn.sha256(style):sub(1, 36),
		settings = items,
		colorSpaceName = "sRGB",
		semanticClass = "theme.kanagawa." .. style,
	})
end

function M.setup()
	-- map of style to style name
	local variants = {
		"wave",
		"dragon",
		"lotus",
	}

	for _, variant in pairs(variants) do
		local theme = require("kanagawa.colors").setup({ theme = variant })
		local content = generate_tmtheme(variant, theme)
		Path:new("extras/tmTheme/kanagawa-" .. variant .. ".tmTheme"):write(content, "w")
	end
end

return M
