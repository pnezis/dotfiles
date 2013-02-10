" VIM Mappings

" Navigating through windows using Alt+Arrow keys
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Resize windows using Ctrl+Arrow keys
nmap <silent> <C-Up> <c-w>-
nmap <silent> <C-Down> <c-w>+
nmap <silent> <C-Left> <c-w><
nmap <silent> <C--Right> <c-w>>
