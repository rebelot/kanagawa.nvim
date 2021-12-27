<p align="center">
  <h2 align="center">🌊 KANAGAWA.nvim 🌊</h2>
</p>

<p align="center">
  <img src="kanagawa@2x.png" width="600" >
</p>

<p align="center">NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.</p>

<p align="center">
  <h2 align="center"><img src="screenshot.png"></h2>
</p>

## Installation

Download with your favorite package manager.

```lua
use "rebelot/kanagawa.nvim"
```

## Requirements

* neovim >= 0.6
* truecolor terminal support
* undercurl terminal support (optional)

## Usage

As simple as writing (pasting)

```vim
colorscheme kanagawa
```

```lua
vim.cmd("colorscheme kanagawa")
```

## Plugin Support

- [Nvim cmp](https://github.com/hrsh7th/nvim-cmp)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

And many others should _"just work"_!

## Configuration

There is no need to call setup if you are ok with the defaults.

```lua
-- Default options:
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = "NONE",
    variablebuiltinStyle = "italic",
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords 
    transparent = false,        -- do not set background color
    colors = {},
    overrides = {},
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
```

### Customize highlight groups and colors

You can change the colors of existing hl-groups as well as creating new ones. Supported keywords: `fg`, `bg`, `style`, `guisp`, `link`.

You can define your own colors or use the theme colors (see example below).
All the palette colors can be found [here](lua/kanagawa/colors.lua).

Example:

```lua
local default_colors = require("kanagawa").colors

local overrides = {
    -- create a new hl-group using default palette colors and/or new ones
    MyHlGroup1 = { fg = default_colors.waveRed, bg = "#AAAAAA", style="underline,bold", guisp="blue" },

    -- override existing hl-groups, the new keywords are merged with existing ones
    VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    TSError    = { link = "Error" },
    TSKeywordOperator = { style = 'bold'}
}

-- this will affect all the hl-groups where the redefined colors are used
local colors = {
    sumiInk1 = "black",
    fujiWhite = "#FFFFFF"
}

require'kanagawa'.setup({ overrides = overrides, colors = colors })
vim.cmd("colorscheme kanagawa")
```

## Color Palette

| NAME          | HEX     | IMG                                                          |
|---------------|---------|--------------------------------------------------------------|
| sumiInk0      | #16161D | ![sumiInk0](https://place-hold.it/100x24/16161D?text=+)      |
| sumiInk1      | #1F1F28 | ![sumiInk1](https://place-hold.it/100x24/1F1F28?text=+)      |
| sumiInk2      | #2A2A37 | ![sumiInk2](https://place-hold.it/100x24/2A2A37?text=+)      |
| sumiInk3      | #363646 | ![sumiInk3](https://place-hold.it/100x24/363646?text=+)      |
| sumiInk4      | #54546D | ![sumiInk4](https://place-hold.it/100x24/54546D?text=+)      |
| waveBlue1     | #223249 | ![waveBlue1](https://place-hold.it/100x24/223249?text=+)     |
| waveBlue2     | #2D4F67 | ![waveBlue2](https://place-hold.it/100x24/2D4F67?text=+)     |
| winterGreen   | #2B3328 | ![winterGreen](https://place-hold.it/100x24/2B3328?text=+)   |
| winterYellow  | #49443C | ![winterYellow](https://place-hold.it/100x24/49443C?text=+)  |
| winterRed     | #43242B | ![winterRed](https://place-hold.it/100x24/43242B?text=+)     |
| winterBlue    | #252535 | ![winterBlue](https://place-hold.it/100x24/252535?text=+)    |
| autumnGreen   | #76946A | ![autumnGreen](https://place-hold.it/100x24/76946A?text=+)   |
| autumnRed     | #C34043 | ![autumnRed](https://place-hold.it/100x24/C34043?text=+)     |
| autumnYellow  | #DCA561 | ![autumnYellow](https://place-hold.it/100x24/DCA561?text=+)  |
| samuraiRed    | #E82424 | ![samuraiRed](https://place-hold.it/100x24/E82424?text=+)    |
| roninYellow   | #FF9E3B | ![roninYellow](https://place-hold.it/100x24/FF9E3B?text=+)   |
| waveAqua1     | #6A9589 | ![waveAqua1](https://place-hold.it/100x24/6A9589?text=+)     |
| dragonBlue    | #658594 | ![dragonBlue](https://place-hold.it/100x24/658594?text=+)    |
| oldWhite      | #C8C093 | ![oldWhite](https://place-hold.it/100x24/C8C093?text=+)      |
| fujiWhite     | #DCD7BA | ![fujiWhite](https://place-hold.it/100x24/DCD7BA?text=+)     |
| fujiGray      | #727169 | ![fujiGray](https://place-hold.it/100x24/727169?text=+)      |
| springViolet1 | #938AA9 | ![springViolet1](https://place-hold.it/100x24/938AA9?text=+) |
| oniViolet     | #957FB8 | ![oniViolet](https://place-hold.it/100x24/957FB8?text=+)     |
| crystalBlue   | #7E9CD8 | ![crystalBlue](https://place-hold.it/100x24/7E9CD8?text=+)   |
| springViolet2 | #9CABCA | ![springViolet2](https://place-hold.it/100x24/9CABCA?text=+) |
| springBlue    | #7FB4CA | ![springBlue](https://place-hold.it/100x24/7FB4CA?text=+)    |
| lightBlue     | #A3D4D5 | ![lightBlue](https://place-hold.it/100x24/A3D4D5?text=+)     |
| waveAqua2     | #7AA89F | ![waveAqua2](https://place-hold.it/100x24/7AA89F?text=+)     |
| springGreen   | #98BB6C | ![springGreen](https://place-hold.it/100x24/98BB6C?text=+)   |
| boatYellow1   | #938056 | ![boatYellow1](https://place-hold.it/100x24/938056?text=+)   |
| boatYellow2   | #C0A36E | ![boatYellow2](https://place-hold.it/100x24/C0A36E?text=+)   |
| carpYellow    | #E6C384 | ![carpYellow](https://place-hold.it/100x24/E6C384?text=+)    |
| sakuraPink    | #D27E99 | ![sakuraPink](https://place-hold.it/100x24/D27E99?text=+)    |
| waveRed       | #E46876 | ![waveRed](https://place-hold.it/100x24/E46876?text=+)       |
| peachRed      | #FF5D62 | ![peachRed](https://place-hold.it/100x24/FF5D62?text=+)      |
| surimiOrange  | #FFA066 | ![surimiOrange](https://place-hold.it/100x24/FFA066?text=+)  |
| katanaGray    | #717C7C | ![katanaGray](https://place-hold.it/100x24/717C7C?text=+)    |

## Extras

* [kitty](extras/kanagawa.conf)
* [iTerm](extras/kanagawa.itermcolors)
* [alacritty](extras/alacritty_kanagawa.yml)
* 🎉 Bonus! You win a tiny [python script](palette.py)🐍 to extract color palettes 🎨 from images! 🥳

## Acknowledgements

* [Tokyonight](https://github.com/folke/tokyonight.nvim)
* [Gruvbox](https://github.com/morhetz/gruvbox)
* [Affinity Designer](https://affinity.serif.com/designer/)

## Related projects
* [kanagawa.vim](https://github.com/guigui64/kanawaga.vim) - unaffiliated vimscript port of kanagawa.nvim
