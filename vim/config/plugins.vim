set nocompatible         " Disable vi-compatibility
filetype off             " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" color schemes & UI plugins
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/ZoomWin'
Plugin 'ryanoasis/vim-webdevicons'

" Text manipulation plugins
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

" Version Control Systems integration plugins
Plugin 'tpope/vim-fugitive'

" File/Code management plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'wincent/Command-T'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'

" Other plugins
Plugin 'vim-scripts/vimwiki'

" Specific language plugins
Plugin 'vim-scripts/a.vim'
Plugin 'python-mode/python-mode'

" Web development plugins
Plugin 'ap/vim-css-color'
Plugin 'tristen/vim-sparkup'

call vundle#end()
