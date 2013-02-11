" VIM Mappings

" Easy window splits
noremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Navigating through windows using Alt+Arrow keys
nnoremap <silent> <A-Up> :wincmd k<CR>
nnoremap <silent> <A-Down> :wincmd j<CR>
nnoremap <silent> <A-Left> :wincmd h<CR>
nnoremap <silent> <A-Right> :wincmd l<CR>

" Resize windows using Ctrl+Arrow keys
nnoremap <silent> <C-Up> <c-w>-
nnoremap <silent> <C-Down> <c-w>+
nnoremap <silent> <C-Left> <c-w><
nnoremap <silent> <C-Right> <c-w>>
