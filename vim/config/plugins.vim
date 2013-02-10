set nocompatible         " Disable vi-compatibility
filetype off             " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" color schemes & UI plugins
Bundle 'tomasr/molokai'
Bundle 'Lokaltog/vim-powerline'
Bundle 'vim-scripts/ZoomWin'

" Text manipulation plugins
Bundle 'tpope/vim-surround' 
Bundle 'scrooloose/nerdcommenter'

" Version Control Systems integration plugins
Bundle 'tpope/vim-fugitive'

" File/Code management plugins
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'

" Language Specific plugins
