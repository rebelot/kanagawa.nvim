<p align="center">
  <h2 align="center">🌊 KANAGAWA.nvim 🌊</h2>
</p>

<p align="center">
  <img src="kanagawa@2x.png" width="600" >
</p>

<p align="center">NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.</p>

<p align="center">
  <h2 align="center"><img src="screenshot.png" width=1024></h2>
</p>
<p align="center">
  <h2 align="center"><img alt="Screenshot" src="https://user-images.githubusercontent.com/36300441/159121961-7c72d6c2-0b1b-4775-81c4-b852afd0987d.png" width=1024></h2>
</p>

## Installation

Download with your favorite package manager.

```lua
use "rebelot/kanagawa.nvim"
```

## Requirements

- neovim >= 0.6
- truecolor terminal support
- undercurl terminal support (optional)

## Usage

As simple as writing (pasting)

```vim
colorscheme kanagawa
```

```lua
vim.cmd("colorscheme kanagawa")
```

## Plugin Support

- [Cmp](https://github.com/hrsh7th/nvim-cmp)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [FloaTerm](https://github.com/voldikss/vim-floaterm)
- [dap-ui](https://github.com/rcarriga/nvim-dap-ui.git)
- [Notify](https://github.com/rcarriga/nvim-notify.git)

And many others should _"just work"_!

## Configuration

There is no need to call setup if you are ok with the defaults.

```lua
-- Default options:
require('kanagawa').setup({
    undercurl = true,           -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    variablebuiltinStyle = { italic = true},
    specialReturn = true,       -- special highlight for the return keyword
    specialException = true,    -- special highlight for exception handling keywords
    transparent = false,        -- do not set background color
    dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
    globalStatus = false,       -- adjust window separators highlight for laststatus=3
    terminalColors = true,      -- define vim.g.terminal_color_{0,17}
    colors = {},
    overrides = {},
    theme = "default"           -- Load "default" theme or the experimental "light" theme
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
```

Light and default themes may also be changed by setting the `background` option.
Note that if the option is set, its value will override and change the `theme` field the configuration.
To set a theme other than `default` or `light` you must disable this setting.

```vim
:set background=dark " default theme
:set background=light " light theme
" disable the setting
:set background=
```

### Customize highlight groups and colors

You can change the colors of existing hl-groups as well as creating new ones.
Supported keywords are the same for `:h nvim_set_hl` `{val}` parameter.

You can define your own colors or use the theme colors (see example below).
All the palette colors can be found [here](lua/kanagawa/colors.lua).

Example:

```lua
local default_colors = require("kanagawa.colors").setup()

-- this will affect all the hl-groups where the redefined colors are used
local my_colors = {
    -- use the palette color name...
    sumiInk1 = "black",
    fujiWhite = "#FFFFFF",
    -- ...or the theme name
    bg = "#272727",
    -- you can also define new colors if you want
    -- this will be accessible from require("kanagawa.colors").setup()
    -- AFTER calling require("kanagawa").setup(config)
    new_color = "teal"
}

local overrides = {
    -- create a new hl-group using default palette colors and/or new ones
    MyHlGroup1 = { fg = default_colors.waveRed, bg = "#AAAAAA", underline = true, bold = true, guisp="blue" },

    -- override existing hl-groups, the new keywords are merged with existing ones
    VertSplit  = { fg = default_colors.bg_dark, bg = "NONE" },
    TSError    = { link = "Error" },
    TSKeywordOperator = { bold = true},
    StatusLine = { fg = my_colors.new_color }
}

require'kanagawa'.setup({ overrides = overrides, colors = my_colors })
vim.cmd("colorscheme kanagawa")
```

Example for **Global Statusline**. Note: it works really nice with `dimInactive = true` option.

```lua
vim.opt.laststatus = 3
vim.opt.fillchars:append({
    horiz = '━',
    horizup = '┻',
    horizdown = '┳',
    vert = '┃',
    vertleft = '┨',
    vertright = '┣',
    verthoriz = '╋',
})
require'kanagawa'.setup({ globalStatus = true, ... })
vim.cmd("colorscheme kanagawa")
```

## Color palette

|                                                         | Name          |    Hex    | Usage                                                                             |
| :-----------------------------------------------------: | :------------ | :-------: | :-------------------------------------------------------------------------------- |
|   <img src="assets/circles/fujiWhite.svg" width="40">   | fujiWhite     | `#DCD7BA` | Default foreground                                                                |
|   <img src="assets/circles/oldWhite.svg" width="40">    | oldWhite      | `#C8C093` | Dark foreground (statuslines)                                                     |
|   <img src="assets/circles/sumiInk0.svg" width="40">    | sumiInk0      | `#16161D` | Dark background (statuslines and floating windows)                                |
|   <img src="assets/circles/sumiInk1.svg" width="40">    | sumiInk1      | `#1F1F28` | Default background                                                                |
|   <img src="assets/circles/sumiInk2.svg" width="40">    | sumiInk2      | `#2A2A37` | Lighter background (colorcolumn, folds)                                           |
|   <img src="assets/circles/sumiInk3.svg" width="40">    | sumiInk3      | `#363646` | Lighter background (cursorline)                                                   |
|   <img src="assets/circles/sumiInk4.svg" width="40">    | sumiInk4      | `#54546D` | Darker foreground (line numbers, fold column, non-text characters), float borders |
|   <img src="assets/circles/waveBlue1.svg" width="40">   | waveBlue1     | `#223249` | Popup background, visual selection background                                     |
|   <img src="assets/circles/waveBlue2.svg" width="40">   | waveBlue2     | `#2D4F67` | Popup selection background, search background                                     |
|  <img src="assets/circles/winterGreen.svg" width="40">  | winterGreen   | `#2B3328` | Diff Add (background)                                                             |
| <img src="assets/circles/winterYellow.svg" width="40">  | winterYellow  | `#49443C` | Diff Change (background)                                                          |
|   <img src="assets/circles/winterRed.svg" width="40">   | winterRed     | `#43242B` | Diff Deleted (background)                                                         |
|  <img src="assets/circles/winterBlue.svg" width="40">   | winterBlue    | `#252535` | Diff Line (background)                                                            |
|  <img src="assets/circles/autumnGreen.svg" width="40">  | autumnGreen   | `#76946A` | Git Add                                                                           |
|   <img src="assets/circles/autumnRed.svg" width="40">   | autumnRed     | `#C34043` | Git Delete                                                                        |
| <img src="assets/circles/autumnYellow.svg" width="40">  | autumnYellow  | `#DCA561` | Git Change                                                                        |
|  <img src="assets/circles/samuraiRed.svg" width="40">   | samuraiRed    | `#E82424` | Diagnostic Error                                                                  |
|  <img src="assets/circles/roninYellow.svg" width="40">  | roninYellow   | `#FF9E3B` | Diagnostic Warning                                                                |
|   <img src="assets/circles/waveAqua1.svg" width="40">   | waveAqua1     | `#6A9589` | Diagnostic Info                                                                   |
|  <img src="assets/circles/dragonBlue.svg" width="40">   | dragonBlue    | `#658594` | Diagnostic Hint                                                                   |
|   <img src="assets/circles/fujiGray.svg" width="40">    | fujiGray      | `#727169` | Comments                                                                          |
| <img src="assets/circles/springViolet1.svg" width="40"> | springViolet1 | `#938AA9` | Light foreground                                                                  |
|   <img src="assets/circles/oniViolet.svg" width="40">   | oniViolet     | `#957FB8` | Statements and Keywords                                                           |
|  <img src="assets/circles/crystalBlue.svg" width="40">  | crystalBlue   | `#7E9CD8` | Functions and Titles                                                              |
| <img src="assets/circles/springViolet2.svg" width="40"> | springViolet2 | `#9CABCA` | Brackets and punctuation                                                          |
|  <img src="assets/circles/springBlue.svg" width="40">   | springBlue    | `#7FB4CA` | Specials and builtin functions                                                    |
|   <img src="assets/circles/lightBlue.svg" width="40">   | lightBlue     | `#A3D4D5` | Not used                                                                          |
|   <img src="assets/circles/waveAqua2.svg" width="40">   | waveAqua2     | `#7AA89F` | Types                                                                             |
|  <img src="assets/circles/springGreen.svg" width="40">  | springGreen   | `#98BB6C` | Strings                                                                           |
|  <img src="assets/circles/boatYellow1.svg" width="40">  | boatYellow1   | `#938056` | Not used                                                                          |
|  <img src="assets/circles/boatYellow2.svg" width="40">  | boatYellow2   | `#C0A36E` | Operators, RegEx                                                                  |
|  <img src="assets/circles/carpYellow.svg" width="40">   | carpYellow    | `#E6C384` | Identifiers                                                                       |
|  <img src="assets/circles/sakuraPink.svg" width="40">   | sakuraPink    | `#D27E99` | Numbers                                                                           |
|    <img src="assets/circles/waveRed.svg" width="40">    | waveRed       | `#E46876` | Standout specials 1 (builtin variables)                                           |
|   <img src="assets/circles/peachRed.svg" width="40">    | peachRed      | `#FF5D62` | Standout specials 2 (exception handling, return)                                  |
| <img src="assets/circles/surimiOrange.svg" width="40">  | surimiOrange  | `#FFA066` | Constants, imports, booleans                                                      |
|  <img src="assets/circles/katanaGray.svg" width="40">   | katanaGray    | `#717C7C` | Deprecated                                                                        |

## Extras

- [alacritty](extras/alacritty_kanagawa.yml)
- [base16](extras/base16-theme.yaml)
- [broot](extras/broot_kanagawa.toml)
- [fish](extras/kanagawa.fish)
- [foot](extras/foot_kanagawa.ini)
- [iTerm](extras/kanagawa.itermcolors)
- [kitty](extras/kanagawa.conf)
- [mintty](extras/kanagawa.minttyrc)
- [pywal](extras/pywal-theme.json)
- [wezterm](extras/wezterm.lua)
- [Windows Terminal](extras/windows_terminal.json)
- [Xresources](extras/.Xresources)
- 🎉 Bonus! You win a tiny [python script](palette.py)🐍 to extract color palettes 🎨 from any image! 🥳

## Acknowledgements

- [Tokyonight](https://github.com/folke/tokyonight.nvim)
- [Gruvbox](https://github.com/morhetz/gruvbox)
- [Affinity Designer](https://affinity.serif.com/designer/)

## Related projects

- [kanagawa.vim](https://github.com/guigui64/kanawaga.vim) - unaffiliated vimscript port of kanagawa.nvim

### Donate

Buy me coffee and support my work ;)

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate/?business=VNQPHGW4JEM3S&no_recurring=0&item_name=Buy+me+coffee+and+support+my+work+%3B%29&currency_code=EUR)
