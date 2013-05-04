let g:indent_guides_enable_on_vim_startup=0 "auto disable at startup
let g:indent_guides_auto_colors = 0         "disable auto colors
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1          "one column width for indents

" Custom colors in order to have nice looking idents in terminal
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgray ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=240
