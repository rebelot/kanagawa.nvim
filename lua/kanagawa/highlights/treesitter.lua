local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config
    local theme = colors.theme
    return {
        -- Misc {{{
        -- @comment (Comment)                          ; line and block comments
        -- @error                                      ; syntax/parser errors
        -- @none                                       ; completely disable the highlight
        -- @preproc (PreProc)                          ; various preprocessor directives & shebangs
        -- @define (Define)                            ; preprocessor definition directives
        -- @operator (Operator)                        ; symbolic operators (e.g. `+` / `*`)
        ["@operator"] = { link = "Operator" },

        -- Punctuation (Delimiter)
        -- @punctuation.delimiter                      ; delimiters (e.g. ` ; ` / `.` / `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket                        ; brackets (e.g. `()` / `{}` / `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @markup.list                        ; special symbols (e.g. `{}` in string interpolation)
        ["@markup.list"] = { fg = theme.syn.special1 },
        -- }}}

        -- Literals {{{
        -- @string (String)                            ; string literals
        -- @string.regexp                               ; regular expressions
        ["@string.regexp"] = { fg = theme.syn.regex },
        -- @string.escape (SpecialChar)                ; escape sequences
        ["@string.escape"] = { fg = theme.syn.regex, bold = true },
        -- @markup.link.label (SpecialChar)               ; other special strings (e.g. dates)

        -- @character (Character)                      ; character literals
        -- @character.special (Special)                ; special characters (e.g. wildcards)

        -- @boolean (Boolean)                          ; boolean literals
        -- @number (Number)                            ; numeric literals
        -- @number.float (Float)                       ; floating-point number literals
        -- }}}

        -- Functions {{{
        -- @function (Function)                        ; function definitions
        -- @function.builtin (Special)                 ; built-in functions
        -- @function.call                              ; function calls
        -- @function.macro (Macro)                     ; preprocessor macros

        -- @method (Function)                          ; method definitions
        -- @method.call                                ; method calls

        -- @constructor (Special)                      ; constructor calls and definitions
        ["@constructor.lua"] = { fg = theme.syn.keyword },
        ["@constructor"] = { fg = theme.syn.special1 },
        -- @variable.parameter (Identifier)            ; parameters of a function
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        -- }}}

        -- Keywords (Keyword) {{{
        -- @keyword                                    ; various keywords
        -- @keyword.function                           ; keywords that define a function (e.g. `func` in Go, `def` in Python)
        -- @keyword.operator                           ; operators that are English words (e.g. `and` / `or`)
        ["@keyword.operator"] = { fg = theme.syn.operator, bold = true },
        -- @keyword.return                             ; keywords like `return` and `yield`
        ["@keyword.return"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.keywordStyle),
        ["@keyword.luap"] = { link = "@string.regexp" },

        -- @conditional (Conditional -> Statement)     ; keywords related to conditionals (e.g. `if` / `else`)
        -- @conditional.ternary                        ; Ternary operator: condition ? 1 : 2
        -- @repeat (Repeat)                            ; keywords related to loops (e.g. `for` / `while`)
        -- @debug (Debug)                              ; keywords related to debugging
        -- @label (Label)                              ; GOTO and other labels (e.g. `label:` in C)
        -- @include (Include)                          ; keywords for including modules (e.g. `import` / `from` in Python)
        -- @exception (Exception)                      ; keywords related to exceptions (e.g. `throw` / `catch`)
        ["@exception"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.statementStyle),
        -- }}}

        -- Types {{{
        -- @type (Type)                                ; type or class definitions and annotations
        -- @type.builtin                               ; built-in types
        -- @type.definition (TypeDef)                  ; type definitions (e.g. `typedef` in C)
        -- @type.qualifier                             ; type qualifiers (e.g. `const`)

        -- @structure (Structure)

        -- @storageclass (StorageClass)                ; modifiers that affect storage in memory or life-time
        -- @attribute                                  ; attribute annotations (e.g. Python decorators)
        ["@attribute"] = { link = "Constant" },
        -- @variable.member (Identifier)               ; object and struct fields
        -- @property (Identifier)                      ; similar to `@variable.member`
        -- }}}

        --Identifiers {{{
        -- @variable (Identifier)                      ; various variable names
        ["@variable"] = { fg = theme.ui.fg },
        -- @variable.builtin                           ; built-in variable names (e.g. `this`)
        ["@variable.builtin"] = { fg = theme.syn.special2, italic = true },

        -- @constant (Constant)                        ; constant identifiers
        -- @constant.builtin (Special)                 ; built-in constant values
        -- @constant.macro (Define -> PreProc)         ; constants defined by the preprocessor

        -- @module (Identifier)                        ; modules or namespaces
        -- @markup.link.label.symbol                                     ; symbols or atoms
        ["@markup.link.label.symbol"] = { fg = theme.syn.identifier },
        -- }}}

        -- Text {{{
        -- @markup                                       ; non-structured text
        -- @markup.strong                                ; bold text
        ["@markup.strong"] = { bold = true },
        -- @markup.emphasis                              ; text with emphasis
        ["@markup.emphasis"] = { italic = true },
        -- @markup.underline (Underlined)                ; underlined text
        -- @markup.strike                                ; strikethrough text
        -- @markup.heading (Title)                       ; text that is part of a title
        ["@markup.heading"] = { link = "Function" },
        -- @markup.raw (Comment)                         ; literal or verbatim text (e.g., inline code)
        ["@markup.raw"] = { link = "String" },
        -- @markup.quote                                 ; text quotations
        ["@markup.quote"] = { link = "@variable.parameter" },
        -- @markup.link.url (Underlined)                      ; URIs (e.g. hyperlinks)
        -- @markup.math                                  ; math environments (e.g. `$ ... $` in LaTeX)
        ["@markup.math"] = { link = "Constant" },
        -- @markup.environment                           ; text environments of markup languages
        ["@markup.environment"] = { link = "Keyword" },
        -- @markup.environment.name                      ; text indicating the type of an environment
        ["@markup.environment.name"] = { link = "String" },
        -- @markup.link (Identifier)                ; text references, footnotes, citations, etc.

        -- @markup.todo (Todo)                           ; todo notes
        -- @markup.note                                  ; info notes
        ["@markup.note"] = { fg = theme.ui.fg_reverse, bg = theme.diag.hint, bold = true },
        -- @markup.warning                               ; warning notes
        ["@markup.warning"] = { fg = theme.ui.fg_reverse, bg = theme.diag.warning, bold = true },
        -- @markup.danger                                ; danger/error notes
        ["@markup.danger"] = { fg = theme.ui.fg, bg = theme.diag.error, bold = true },

        -- @markup.diff.add                              ; added text (for diff files)
        ['@markup.diff.add'] = { fg = theme.vcs.added },
        -- @markup.diff.delete                           ; deleted text (for diff files)
        ['@markup.diff.delete'] = { fg = theme.vcs.removed },
        -- }}}

        -- Tags (Tag) {{{
        -- @tag                                        ; XML tag names
        -- @tag.attribute                              ; XML tag attributes
        ["@tag.attribute"] = { fg = theme.syn.identifier },
        -- @tag.delimiter                              ; XML tag delimiter
        ["@tag.delimiter"] = { fg = theme.syn.punct },
        -- }}}
    }
end

return M
--vim: fdm=marker
