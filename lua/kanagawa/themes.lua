return {
    default = function(colors)
        colors.bg = colors.sumiInk1 -- Default Background
        colors.bg_dark = colors.sumiInk0
        colors.bg_light0 = colors.sumiInk2
        colors.bg_light1 = colors.sumiInk3
        colors.bg_light2 = colors.sumiInk4
        colors.bg_light3 = colors.springViolet1

        -- bg_menu     = palette.abyssBlue
        colors.bg_menu = colors.waveBlue1
        colors.bg_menu_sel = colors.waveBlue2

        colors.bg_status = colors.sumiInk0
        colors.bg_visual = colors.waveBlue1
        colors.bg_search = colors.waveBlue2

        colors.fg_border = colors.sumiInk4
        colors.fg_dark = colors.oldWhite
        colors.fg_reverse = colors.waveBlue1

        colors.fg_comment = colors.fujiGray -- Comments, Invisibles, Line Highlighting
        colors.fg = colors.fujiWhite -- Default Foreground, Caret, Delimiters, Operators
        -- fg_light   = palette.waveBlue2     -- Light Foreground (Not often used)

        colors.co = colors.surimiOrange -- Boolean, Constants, XML Attributes, Markup Link Url
        colors.st = colors.springGreen -- Strings,
        colors.nu = colors.sakuraPink -- Numbers
        colors.id = colors.carpYellow -- Identifier
        colors.fn = colors.crystalBlue -- Functions, Methods, Attribute IDs, Headings
        colors.sm = colors.oniViolet -- Statement: Label, Conditional, Repeat
        colors.kw = colors.oniViolet -- Keywords, Exceptions
        colors.op = colors.boatYellow2 -- Operator
        colors.pp = colors.surimiOrange -- PreProc: Include, Define, Macro, PreCondit
        colors.ty = colors.waveAqua2 -- Type: StroareClass, Structure, Typedef
        colors.sp = colors.springBlue -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
        colors.sp2 = colors.waveRed -- Special Variables (cls, colors, etc...)
        colors.sp3 = colors.peachRed
        colors.br = colors.springViolet2 -- TSPunct*
        colors.re = colors.boatYellow2 -- Regular Expressions, Escape Characters
        colors.dep = colors.katanaGray -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

        colors.diag = {
            error = colors.samuraiRed,
            warning = colors.roninYellow,
            info = colors.dragonBlue,
            hint = colors.waveAqua1,
        }

        colors.diff = {
            add = colors.winterGreen,
            delete = colors.winterRed,
            change = colors.winterBlue,
            text = colors.winterYellow,
        }

        colors.git = {
            added = colors.autumnGreen,
            removed = colors.autumnRed,
            changed = colors.autumnYellow,
        }
    end
}
