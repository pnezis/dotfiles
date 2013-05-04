" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
    " Custom file extensions
    autocmd BufNewFile,BufRead *.zsh-theme set filetype=zsh
endif

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Folding rules for specific filetypes
augroup filetypes_folding
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
