" VIM Mappings

" Mappings for tmux
if &term =~ '^screen'
    " In order to edit these keys, 
    " for your system you should do the following:
    " In insert mode press <C-v> followed with the
    " symbol you want to map, eg Up arrow, and then
    " do the mapping with vim's key.

    " Arrows
    map OB <Down>
    map OA <Up>
    map OD <Left>
    map OC <Right>

    " Control + Arrows
    map [C <C-Right>
    map [D <C-Left>
    map [A <C-Up>
    map [B <C-Down>

    " Alt + Arrows
    map OC <A-Right>
    map OD <A-Left>
    map OA <A-Up>
    map OB <A-Down>
endif


" Easy window splits
nnoremap <silent> vv <C-w>v
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
