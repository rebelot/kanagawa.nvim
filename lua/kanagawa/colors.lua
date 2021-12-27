local colors = {

    -- Bg Shades
    sumiInk0      = "#16161D",
    sumiInk1      = "#1F1F28",
    sumiInk2      = "#2A2A37",
    sumiInk3      = "#363646",
    sumiInk4      = "#54546D",

    -- Popup and Floats
    waveBlue1     = "#223249",
    waveBlue2     = "#2D4F67",

    -- Diff and Git
    winterGreen   = "#2B3328",
    winterYellow  = "#49443C",
    winterRed     = "#43242B",
    winterBlue    = "#252535",
    autumnGreen   = "#76946A",
    autumnRed     = "#C34043",
    autumnYellow  = "#DCA561",

    -- Diag
    samuraiRed    = "#E82424",
    roninYellow   = "#FF9E3B",
    waveAqua1     = "#6A9589",
    dragonBlue    = "#658594",

    -- Fg and Comments
    oldWhite      = "#C8C093",
    fujiWhite     = "#DCD7BA",
    fujiGray      = "#727169",
    springViolet1 = "#938AA9",

    oniViolet     = "#957FB8",
    crystalBlue   = "#7E9CD8",
    springViolet2 = "#9CABCA",
    springBlue    = "#7FB4CA",
    lightBlue     = "#A3D4D5", -- unused yet
    waveAqua2     = "#7AA89F", -- improve lightness: desaturated greenish Aqua

    -- waveAqua2  = "#68AD99",
    -- waveAqua4  = "#7AA880",
    -- waveAqua5  = "#6CAF95",
    -- waveAqua3  = "#68AD99",

    springGreen   = "#98BB6C",
    boatYellow1   = "#938056",
    boatYellow2   = "#C0A36E",
    carpYellow    = "#E6C384",

    sakuraPink    = "#D27E99",
    waveRed       = "#E46876",
    peachRed      = "#FF5D62",
    surimiOrange  = "#FFA066",
    katanaGray    = "#717C7C",
}

function colors:make_theme()
    self.bg = self.sumiInk1 -- Default Background
    self.bg_dark = self.sumiInk0
    self.bg_light0 = self.sumiInk2
    self.bg_light1 = self.sumiInk3
    self.bg_light2 = self.sumiInk4
    self.bg_light3 = self.springViolet1

    -- bg_menu     = palette.abyssBlue
    self.bg_menu = self.waveBlue1
    self.bg_menu_sel = self.waveBlue2

    self.bg_status = self.sumiInk0
    self.bg_visual = self.waveBlue1
    self.bg_search = self.waveBlue2

    self.fg_border = self.sumiInk4
    self.fg_dark = self.oldWhite
    self.fg_reverse = self.waveBlue1

    self.fg_comment = self.fujiGray -- Comments, Invisibles, Line Highlighting
    self.fg = self.fujiWhite -- Default Foreground, Caret, Delimiters, Operators
    -- fg_light   = palette.waveBlue2     -- Light Foreground (Not often used)

    self.co = self.surimiOrange -- Boolean, Constants, XML Attributes, Markup Link Url
    self.st = self.springGreen -- Strings,
    self.nu = self.sakuraPink -- Numbers
    self.id = self.carpYellow -- Identifier
    self.fn = self.crystalBlue -- Functions, Methods, Attribute IDs, Headings
    self.sm = self.oniViolet -- Statement: Label, Conditional, Repeat
    self.kw = self.oniViolet -- Keywords, Exceptions
    self.op = self.boatYellow2 -- Operator
    self.pp = self.surimiOrange -- PreProc: Include, Define, Macro, PreCondit
    self.ty = self.waveAqua2 -- Type: StroareClass, Structure, Typedef
    self.sp = self.springBlue -- Special: Tag, Delimiter, SpecialComment, Debug, SpecialChar, Builtin
    self.sp2 = self.waveRed -- Special Variables (cls, self, etc...)
    self.sp3 = self.peachRed
    self.br = self.springViolet2 -- TSPunct*
    self.re = self.boatYellow2 -- Regular Expressions, Escape Characters
    self.dep = self.katanaGray -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>

    self.diag = {
        error = self.samuraiRed,
        warning = self.roninYellow,
        info = self.dragonBlue,
        hint = self.waveAqua1,
    }

    self.diff = {
        add = self.winterGreen,
        delete = self.winterRed,
        change = self.winterBlue,
        text = self.winterYellow,
    }

    self.git = {
        added = self.autumnGreen,
        removed = self.autumnRed,
        changed = self.autumnYellow,
    }
end

return colors
