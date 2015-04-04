set nocompatible         " Disable vi-compatibility
filetype off             " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" color schemes & UI plugins
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/ZoomWin'

" Text manipulation plugins
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
'
" Version Control Systems integration plugins
Plugin 'tpope/vim-fugitive'

" File/Code management plugins
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/Command-T'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'fholgado/minibufexpl.vim'

" Other plugins
Plugin 'vim-scripts/vimwiki'

" Specific language plugins
Plugin 'vim-scripts/a.vim'
Plugin 'ap/vim-css-color'

call vundle#end()
