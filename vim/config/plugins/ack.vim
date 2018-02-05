" Use the silver searcher (ag) instead of ack
"if executable('ag')
    "let g:ackprg = 'ag --vimgrep'
"endif

" Split rightward so as not to displace a left NERDTree
let g:ack_mappings = {
    \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
    \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J',
    \ '<cr>': '<C-W><CR>:cclose<CR><C-W>T:copen<CR>' }
