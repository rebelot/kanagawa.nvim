local utils = require("kanagawa.utils")

local M = {}

--- @param colors ThemeColors
function M.generate(colors)
    local tmTheme = utils.template(M.template, colors)
    return tmTheme
end

M.template = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>name</key>
    <string>${_theme_name}</string>
    <key>settings</key>
    <array>
      <dict>
        <key>settings</key>
        <dict>
          <key>background</key>
          <string>${ui.bg}</string>
          <key>caret</key>
          <string>${ui.fg_dim}</string>
          <key>foreground</key>
          <string>${ui.fg}</string>
          <key>invisibles</key>
          <string>${ui.nontext}</string>
          <key>lineHighlight</key>
          <string>${ui.bg_search}</string>
          <key>selection</key>
          <string>${ui.bg_search}</string>
          <key>findHighlight</key>
          <string>${ui.bg_search}</string>
          <key>selectionBorder</key>
          <string>#222218</string>
          <key>gutterForeground</key>
          <string>${ui.nontext}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Comment</string>
        <key>scope</key>
        <string>comment</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string>italic</string>
          <key>foreground</key>
          <string>${syn.comment}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>String</string>
        <key>scope</key>
        <string>string</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.string}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Number</string>
        <key>scope</key>
        <string>constant.numeric</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.number}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Built-in constant</string>
        <key>scope</key>
        <string>constant.language</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.constant}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>User-defined constant</string>
        <key>scope</key>
        <string>constant.character, constant.other</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.identifier}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Variable</string>
        <key>scope</key>
        <string>variable</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string>${syn.identifier}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Ruby's @variable</string>
        <key>scope</key>
        <string>variable.other.readwrite.instance</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.identifier}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>String interpolation</string>
        <key>scope</key>
        <string>constant.character.escaped, constant.character.escape, string source, string source.ruby</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.operator}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Keyword</string>
        <key>scope</key>
        <string>keyword</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.preproc}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Storage</string>
        <key>scope</key>
        <string>storage</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.statement}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Storage type</string>
        <key>scope</key>
        <string>storage.type</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.statement}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Class name</string>
        <key>scope</key>
        <string>entity.name.class</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.type}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Inherited class</string>
        <key>scope</key>
        <string>entity.other.inherited-class</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.type}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Function name</string>
        <key>scope</key>
        <string>entity.name.function</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.fun}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Function argument</string>
        <key>scope</key>
        <string>variable.parameter</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.parameter}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Tag name</string>
        <key>scope</key>
        <string>entity.name.tag</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.special1}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Tag attribute</string>
        <key>scope</key>
        <string>entity.other.attribute-name</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.identifier}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Library function</string>
        <key>scope</key>
        <string>support.function</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.special1}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Library constant</string>
        <key>scope</key>
        <string>support.constant</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.special1}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Library class/type</string>
        <key>scope</key>
        <string>support.type, support.class</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.type}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Library variable</string>
        <key>scope</key>
        <string>support.other.variable</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.constant}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Invalid</string>
        <key>scope</key>
        <string>invalid</string>
        <key>settings</key>
        <dict>
          <key>fontStyle</key>
          <string/>
          <key>foreground</key>
          <string>${syn.special3}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Invalid deprecated</string>
        <key>scope</key>
        <string>invalid.deprecated</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.deprecated}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON String</string>
        <key>scope</key>
        <string>meta.structure.dictionary.json string.quoted.double.json</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.statement}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>diff.header</string>
        <key>scope</key>
        <string>meta.diff, meta.diff.header</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.fun}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>diff.deleted</string>
        <key>scope</key>
        <string>markup.deleted</string>
        <key>settings</key>
        <dict>
          <key>background</key>
          <string>${diff.delete}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>diff.inserted</string>
        <key>scope</key>
        <string>markup.inserted</string>
        <key>settings</key>
        <dict>
          <key>background</key>
          <string>${diff.add}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>diff.changed</string>
        <key>scope</key>
        <string>markup.changed</string>
        <key>settings</key>
        <dict>
          <key>background</key>
          <string>${diff.change}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>constant.numeric.line-number.find-in-files - match</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${ui.nontext}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>entity.name.filename</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${ui.fg_dim}</string>
        </dict>
      </dict>
      <dict>
        <key>scope</key>
        <string>message.error</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${diag.error}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON Punctuation</string>
        <key>scope</key>
        <string>punctuation.definition.string.begin.json - meta.structure.dictionary.value.json, punctuation.definition.string.end.json - meta.structure.dictionary.value.json</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.punct}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON Structure</string>
        <key>scope</key>
        <string>meta.structure.dictionary.json string.quoted.double.json</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.statement}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>JSON String</string>
        <key>scope</key>
        <string>meta.structure.dictionary.value.json string.quoted.double.json</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>#ffffff</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Escape Characters</string>
        <key>scope</key>
        <string>constant.character.escape</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.special3}</string>
        </dict>
      </dict>
      <dict>
        <key>name</key>
        <string>Regular Expressions</string>
        <key>scope</key>
        <string>string.regexp</string>
        <key>settings</key>
        <dict>
          <key>foreground</key>
          <string>${syn.regex}</string>
        </dict>
      </dict>
    </array>
    <key>uuid</key>
    <string>592FC036-6BB7-4676-A2F5-2894D48C8E33</string>
    <key>colorSpaceName</key>
    <string>sRGB</string>
    <key>semanticClass</key>
    <string>${_theme_class}</string>
  </dict>
</plist>]]

return M
