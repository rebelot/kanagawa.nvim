let base00 = "#181616"  # Background
let base01 = "#282828"  # Lighter Background (status bars, line numbers)
let base02 = "#2D4F67"  # Selection Background
let base03 = "#585858"  # Comments, Invisibles, Line Highlighting
let base04 = "#C8C093"  # Dark Foreground (status bars)
let base05 = "#C8C093"  # Default Foreground, Caret, Delimiters
let base06 = "#e8e8e8"  # Light Foreground (not often used)
let base07 = "#f8f8f8"  # Light Background (not often used)
let base08 = "#c4746e"  # Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
let base09 = "#E46876"  # Integers, Boolean, Constants, XML Attributes, Markup Link Url
let base0a = "#87a987"  # Classes, Markup Bold, Search Text Background
let base0b = "#E6C384"  # Strings, Inherited Class, Markup Code, Diff Inserted
let base0c = "#7FB4CA"  # Support, Regular Expressions, Escape Characters, Markup Quotes
let base0d = "#938AA9"  # Functions, Methods, Attribute IDs, Headings
let base0e = "#7AA89F"  # Keywords, Storage, Selector, Markup Italic, Diff Changed
let base0f = "#c5c9c5"  # Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?



# we're creating a theme here that uses the colors we defined above.

let base16_theme = {
    separator: $base03
    leading_trailing_space_bg: $base04
    header: $base0b
    date: $base0e
    filesize: $base0d
    row_index: $base0c
    bool: $base08
    int: $base0b
    duration: $base08
    range: $base08
    float: $base08
    string: $base04
    nothing: $base08
    binary: $base08
    cellpath: $base08
    hints: dark_gray

    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: b }
    shape_bool: $base0d
    shape_int: { fg: $base0e attr: b }
    shape_float: { fg: $base0e attr: b }
    shape_range: { fg: $base0a attr: b }
    shape_internalcall: { fg: $base0c attr: b }
    shape_external: $base0c
    shape_externalarg: { fg: $base0b attr: b }
    shape_literal: $base0d
    shape_operator: $base0a
    shape_signature: { fg: $base0b attr: b }
    shape_string: $base0b
    shape_filepath: $base0d
    shape_globpattern: { fg: $base0d attr: b }
    shape_variable: $base0e
    shape_flag: { fg: $base0d attr: b }
    shape_custom: { attr: b }
}
