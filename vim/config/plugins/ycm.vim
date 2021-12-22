" Auto close preview window after insertion
let g:ycm_autoclose_preview_window_after_insertion=1

" Disable auto hover window
let g:ycm_auto_hover=''

let g:ycm_complete_in_comments=1 " complete in commnets


" Map <Leader>d to open the preview window with documentation of the word
" under the cursor
nnoremap <Leader>d :YcmCompleter GetDoc <CR>
