<p align="center">
  <h2 align="center">🌊 KANAGAWA.nvim 🌊</h2>
</p>

<p align="center">
  <img src="kanagawa@2x.png">
</p>

<p align="center">NeoVim dark colorscheme inspired by the colors of the famous painting by Katsushika Hokusai.</p>

# Installation

Download with your favorite package manager.

```lua
use "rebelot/kanagawa.nvim"
```

# Usage

Simple as writing (pasting) `:colo kanagawa` !

```vim
colorscheme kanagawa
```

## Plugin Support

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)

## Configuration

There is no need to call setup if you are ok with the defaults.

```lua
-- Default options:
require'kanagawa'.setup({
    undercurl = true,
    commentStyle = "italic",
    functionStyle = "NONE",
    keywordStyle = "italic",
    statementStyle = "bold",
    typeStyle = 'NONE',
    transparent = false,
    colors = {},
    overrides = {},
})

-- setup must be called before loading
vim.cmd[[colorscheme kanagawa]]
```

### Customize highlight groups and colors

You can change the colors of existing hl-groups as well as creating new ones. Supported keywords: `fg`, `bg`, `style`, `guisp`, `link`.

```lua
overrides = {
    MyHlGroup1 = { fg = "red", bg = "#AAAAAA", style=underline,bold, guisp=blue },
    VertSplit  = { fg = "black", bg = "NONE" }
    TSError    = { link = "Error" },
}

colors = {
    sumiInk1 = "black",
    fujiWhite = "#FFFFFF"
}
```

### Accessing palette colors

You can find all the palette colors [here](lua/kanagawa/colors.lua).

```lua
local palette, colors = unpack(require("kanagawa.colors"))
```

### Extras

* [kitty](extras/kanagawa.conf)

🎉 Bonus, you win a tiny [python script](palette.py)🎨🐍 to extract color palettes from pictures! 🥳

# Acknowledgements

* [Tokyonight](https://github.com/folke/tokyonight.nvim)
* [Gruvbox](https://github.com/morhetz/gruvbox)
* [Affinity Designer](https://affinity.serif.com/designer/)
