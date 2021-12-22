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

if has('mac')
    " Arrows
    map [B <Down>
    map [A <Up>
    map [D <Left>
    map [C <Right>

    " Alt + Arrows
    map [C <A-Right>
    map [D <A-Left>
    map [A <A-Up>
    map [B <A-Down>
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

" Search and highlight current word 
nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <silent> <leader>6 :call HiInterestingWord(6)<cr>
nnoremap <silent> <leader>0 :call clearmatches()<cr>

" Default Highlights for custom highlight search
hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

" Use Enter to toggle folds.
nnoremap <CR> :call FoldingEnter()<CR>
vnoremap <CR> :call FoldingEnter()<CR>

" Quick edit and reload of vim config
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vr :source $MYVIMRC<CR>
