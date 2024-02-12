local M = {}

---@param colors KanagawaColors
---@param config? KanagawaConfig
function M.setup(colors, config)
    config = config or require("kanagawa").config
    local theme = colors.theme
    return {
        --Identifiers {{{
        -- @variable (Identifier)                      ; various variable names
        ["@variable"] = { fg = theme.ui.fg },
        -- @variable.builtin                           ; built-in variable names (e.g. `this`)
        ["@variable.builtin"] = { fg = theme.syn.special2, italic = true },
        -- @variable.parameter                         ; parameters of a function
        ["@variable.parameter"] = { fg = theme.syn.parameter },
        -- @variable.member                            ; object and struct fields
        ["@variable.member"] = { fg = theme.syn.identifier },

        -- @constant (Constant)                        ; constant identifiers
        -- @constant.builtin (Special)                 ; built-in constant values
        -- @constant.macro (Define -> PreProc)         ; constants defined by the preprocessor

        -- @module (Identifier)                        ; modules or namespaces
        -- @module.builtin                             ; built-in modules or namespaces
        -- @label                                      ; GOTO and other labels (e.g. `label:` in C), including heredoc labels
        -- }}}

        -- Literals {{{
        -- @string (String)                            ; string literals
        -- @string.documentation                       ; string documenting code (e.g. Python docstrings)
        -- @string.regexp                              ; regular expressions
        ["@string.regexp"] = { fg = theme.syn.regex },
        -- @string.escape (SpecialChar)                ; escape sequences
        ["@string.escape"] = { fg = theme.syn.regex, bold = true },
        -- @string.special (SpecialChar)               ; other special strings (e.g. dates)
        -- @string.special.symbol                      ; symbols or atoms
        ["@string.special.symbol"] = { fg = theme.syn.identifier },
        -- @string.special.url                         ; URIs (e.g. hyperlinks)
        -- @string.special.path                        ; filenames

        -- @character (Character)                      ; character literals
        -- @character.special (Special)                ; special characters (e.g. wildcards)

        -- @boolean (Boolean)                          ; boolean literals
        -- @number (Number)                            ; numeric literals
        -- @number.float (Float)                       ; floating-point number literals
        -- }}}

        -- Types {{{
        -- @type (Type)                                ; type or class definitions and annotations
        -- @type.builtin                               ; built-in types
        -- @type.definition (TypeDef)                  ; type definitions (e.g. `typedef` in C)
        -- @type.qualifier                             ; type qualifiers (e.g. `const`)
        -- @attribute                                  ; attribute annotations (e.g. Python decorators)
        ["@attribute"] = { link = "Constant" },
        -- @property (Identifier)                      ; the key in key/value pairs
        -- }}}

        -- Functions {{{
        -- @function (Function)                        ; function definitions
        -- @function.builtin (Special)                 ; built-in functions
        -- @function.call                              ; function calls
        -- @function.macro (Macro)                     ; preprocessor macros

        -- @function.method (Function)                 ; method definitions
        -- @function.method.call                       ; method calls

        -- @constructor (Special)                      ; constructor calls and definitions
        ["@constructor"] = { fg = theme.syn.special1 },
        ["@constructor.lua"] = { fg = theme.syn.keyword },
        -- @operator (Operator)                        ; symbolic operators (e.g. `+` / `*`)
        ["@operator"] = { link = "Operator" },
        -- }}}

        -- Keywords (Keyword) {{{
        -- @keyword                                    ; various keywords
        -- @keyword.coroutine                          ; keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
        -- @keyword.function                           ; keywords that define a function (e.g. `func` in Go, `def` in Python)
        -- @keyword.operator                           ; operators that are English words (e.g. `and` / `or`)
        ["@keyword.operator"] = { fg = theme.syn.operator, bold = true },
        -- @keyword.import                             ; keywords for including modules (e.g. `import` / `from` in Python)
        ["@keyword.import"] = { link = "PreProc" },
        -- @keyword.storage (StorageClass)             ; modifiers that affect storage in memory or life-time
        -- @keyword.repeat  (Repeat)                   ; keywords related to loops (e.g. `for` / `while`)
        -- @keyword.return                             ; keywords like `return` and `yield`
        ["@keyword.return"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.keywordStyle),
        -- @keyword.debug  (Debug)                            ; keywords related to debugging
        -- @keyword.exception (Exception)              ; keywords related to exceptions (e.g. `throw` / `catch`)
        ["keyword.exception"] = vim.tbl_extend("force", { fg = theme.syn.special3 }, config.statementStyle),

        ["@keyword.luap"] = { link = "@string.regex" },

        -- @keyword.conditional (Conditional -> Statement)     ; keywords related to conditionals (e.g. `if` / `else`)
        -- @keyword.conditional.ternary                ; Ternary operator: condition ? 1 : 2
        -- @keyword.directive (PreProc)                ; various preprocessor directives & shebangs
        -- @keyword.directive.define (Define)          ; preprocessor definition directives
        -- }}}

        -- Punctuation (Delimiter)
        -- @punctuation.delimiter                      ; delimiters (e.g. ` ; ` / `.` / `,`)
        ["@punctuation.delimiter"] = { fg = theme.syn.punct },
        -- @punctuation.bracket                        ; brackets (e.g. `()` / `{}` / `[]`)
        ["@punctuation.bracket"] = { fg = theme.syn.punct },
        -- @punctuation.special                        ; special symbols (e.g. `{}` in string interpolation)
        ["@punctuation.special"] = { fg = theme.syn.special1 },
        -- }}}

        -- Comments {{{
        -- @comment (Comment)                          ; line and block comments
        -- @comment.documentation                      ; comments documenting code

        -- @comment.error                              ; error-type comments (e.g. `ERROR`, `FIXME`, `DEPRECATED:`)
        ["@comment.error"] = { fg = theme.ui.fg, bg = theme.diag.error, bold = true },
        -- @comment.warning                            ; warning-type comments (e.g. `WARNING:`, `FIX:`, `HACK:`)
        ["@comment.warning"] = { fg = theme.ui.fg_reverse, bg = theme.diag.warning, bold = true },
        -- @comment.todo (Todo)                        ; todo-type comments (e.g. `TODO:`, `WIP:`, `FIXME:`)
        -- @comment.note                               ; note-type comments (e.g. `NOTE:`, `INFO:`, `XXX`)
        ["@comment.note"] = { fg = theme.ui.fg_reverse, bg = theme.diag.hint, bold = true },
        -- }}}

        -- Markup {{{
        -- @markup.strong                              ; bold text
        ["@markup.strong"] = { bold = true },
        -- @markup.italic                              ; italic text
        ["@markup.italic"] = { italic = true },
        -- @markup.strikethrough                       ; strikethrough text
        -- @markup.underline (Underlined)              ; underlined text

        -- @markup.heading (Title)       ; headings, titles (including markers)
        ["@markup.heading"] = { link = "Function" },

        --xx @text.literal (Comment)                     ; literal or verbatim text (e.g., inline code)
        -- ["@text.literal"] = { link = "String" },

        -- @markup.quote                               ; block quotes
        ["@markup.quote"] = { link = "@variable.parameter" },
        -- @markup.math                                ; math environments (e.g. `$ ... $` in LaTeX)
        ["@markup.math"] = { link = "Constant" },
        -- @markup.environment                         ; environments (e.g. in LaTeX)
        ["@markup.environment"] = { link = "Keyword" },

        -- @markup.link (Identifier)                   ; text references, footnotes, citations, etc.
        -- @markup.link.label                          ; link, reference descriptions
        -- @markup.link.url (Underlined)               ; URL-style links

        -- @markup.raw                                 ; literal or verbatim text (e.g. inline code)
        -- @markup.raw.block                           ; literal or verbatim text as a stand-alone block
        --                                             ; (use priority 90 for blocks with injections)

        -- @markup.list                                ; list markers
        -- @markup.list.checked                        ; checked todo-style list markers
        -- @markup.list.unchecked                      ; unchecked todo-style list markers

        -- @diff.plus                                  ; added text (for diff files)
        ["@diff.plus"] = { fg = theme.vcs.added },
        -- @diff.minus                                 ; deleted text (for diff files)
        ["@diff.minus"] = { fg = theme.vcs.removed },
        -- @diff.delta                                 ; changed text (for diff files)
        ["@diff.delta"] = { fg = theme.vcs.changed },
        -- }}}

        -- @tag                                        ; XML tag names
        -- @tag.attribute                              ; XML tag attributes
        ["@tag.attribute"] = { fg = theme.syn.identifier },
        -- @tag.delimiter                              ; XML tag delimiter
        ["@tag.delimiter"] = { fg = theme.syn.punct },
    }
end

return M
--vim: fdm=marker
