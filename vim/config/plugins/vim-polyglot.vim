let g:polyglot_disabled = ['markdown']

let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0

" Update git commit summary length
syn clear gitcommitSummary
syn match   gitcommitSummary    "^.\{0,70\}" contained containedin=gitcommitFirstLine nextgroup=gitcommitOverflow contains=@Spell
