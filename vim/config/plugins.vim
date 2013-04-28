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
Bundle 'godlygeek/tabular'

" Version Control Systems integration plugins
Bundle 'tpope/vim-fugitive'

" File/Code management plugins
Bundle 'scrooloose/nerdtree'
Bundle 'wincent/Command-T'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/syntastic'
Bundle 'mutewinter/vim-indent-guides'

" Snipmate, and dependencies
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "honza/vim-snippets"
"Bundle "garbas/vim-snipmate"
Bundle "SirVer/ultisnips"

" Other plugins
Bundle 'vim-scripts/vimwiki'

" Language Specific plugins
