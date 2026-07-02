# Kanagawa Hokusai — Obsidian Theme

A faithful port of [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim) for Obsidian. Three variants — Wave (dark), Dragon (dark alt), Lotus (light).

## Variants

| Variant | Description | Colors |
|---------|-------------|--------|
| **Wave** (default dark) | Deep ocean tones, warm dark, high contrast | Background `#1F1F28`, Foreground `#DCD7BA` |
| **Dragon** | Late-night muted, warm brown-black, low contrast | Background `#181616`, Foreground `#C5C9C5` |
| **Lotus** | Warm parchment-like light mode | Background `#F2ECBC`, Foreground `#545464` |

Switch between Wave and Dragon in dark mode via the [Style Settings](https://github.com/mgmeyers/obsidian-style-settings) plugin (Community → Style Settings).

## Installation

### From Obsidian (recommended once published)
1. Open Settings → Appearance → Themes
2. Click "Manage" and search for "Kanagawa"
3. Install and activate

### Manual / Development
1. Clone or download this repo
2. Copy the folder to `{vault}/.obsidian/themes/Kanagawa/`
3. Enable the theme in Settings → Appearance

## Features

- **3 full variants** — Wave, Dragon, Lotus — each with complete palette coverage
- **Style Settings integration** — switch dark variants, configure fonts
- **Complete CSS variable coverage** — backgrounds, text, interactive elements, headings, syntax highlighting, callouts, graph, canvas, workspace chrome
- **Faithful to source** — color mappings follow kanagawa.nvim's `themes.lua` semantics
- **Clean architecture** — 3-layer design (palette → variant → token mapping) for maintainability
- **No bloat** — ~900 lines, focused on faithful port with no unnecessary additions

## Color Palette

All 104 colors from the canonical kanagawa palette are available as CSS custom properties (`--sumiInk3`, `--fujiWhite`, `--springGreen`, etc.). Perfect for custom snippets and theme customization.

## Credits

- [rebelot](https://github.com/rebelot) — the original kanagawa.nvim theme
- [kmkkiii](https://github.com/kmkkiii/obsidian-kanagawa-theme) — initial Obsidian port with all 3 variants

## License

MIT
