" Auto close preview window after insertion
let g:ycm_autoclose_preview_window_after_insertion=1

" Map <Leader>d to open the preview window with documentation of the word
" under the cursor
nnoremap <Leader>d :YcmCompleter GetDoc <CR>
