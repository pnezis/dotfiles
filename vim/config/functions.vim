
" Highlight all occurrences of current word, and set a match name with the 
" format InterestingWord{n} where n the argument.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.
"
" Use <leader>0 to clean all matches
" 
" Check the mapppings.vim file for the highlight mappings
function! HiInterestingWord(n)
    " Save our location.
    normal! mz
    " Yank the current word into the z register.
    normal! "zyiw
    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n
    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)
    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'
    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)
    " Move back to our original location.
    normal! `z
endfunction


" Regular enter when invoked from the quickfix window but 'za' otherwise
function! FoldingEnter()
    if &buftype ==# 'quickfix'
        execute "normal! \<CR>"
    else
        normal! za
    endif
endfunction
