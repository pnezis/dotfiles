 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'

 " color schemes
 Bundle 'tomasr/molokai'

 " vim-scripts repos
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!

 " Disable vi-compatibility - Necessary for powerline plugin
 set nocompatible
 " Always show the status line
 set laststatus=2
 " Set UTF-8 encoding in order to correctly show Glyphs in powerline
 set encoding=utf-8

 " Force VIM to use 256 color terminal in order to correctly support the
 " color scheme
 set t_Co=256

 " Navigating through windows using Alt+Arrow keys
 nmap <silent> <A-Up> :wincmd k<CR>
 nmap <silent> <A-Down> :wincmd j<CR>
 nmap <silent> <A-Left> :wincmd h<CR>
 nmap <silent> <A-Right> :wincmd l<CR>


 color molokai
