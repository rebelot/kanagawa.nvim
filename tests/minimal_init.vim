" Avoid neovim/neovim#11362
set display=lastline
set directory=""
set noswapfile

let $kanagawa = getcwd()
let $luassertx = getcwd() .. "/tests/luassertx"
let $dependencies = getcwd() .. "/dependencies"

set rtp+=$kanagawa,$luassertx
set packpath=$dependencies

lua require("luassertx")
packloadall

function! RunTests() abort
    lua <<EOF
    require("plenary.test_harness").test_directory(os.getenv("FILE") or "./tests", {
        minimal_init = vim.fn.getcwd() .. "/tests/minimal_init.vim",
    })
EOF
endfunction
