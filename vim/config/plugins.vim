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
Plugin 'mhinz/vim-startify'
Plugin 'Yggdroot/indentLine'
Plugin 'joshdick/onedark.vim'

" Text manipulation plugins
Plugin 'tpope/vim-surround' 
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

" Version Control Systems integration plugins
Plugin 'tpope/vim-fugitive'

" File/Code management plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
"Plugin 'scrooloose/syntastic'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
"Plugin 'mileszs/ack.vim'
"Plugin 'davidhalter/jedi-vim'

" Other plugins
Plugin 'vim-scripts/vimwiki'

" Specific language plugins
Plugin 'vim-scripts/a.vim'
Plugin 'wavded/vim-stylus'
" Plugin 'python-mode/python-mode'
Plugin 'sheerun/vim-polyglot'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-markdown'

" Web development plugins
Plugin 'ap/vim-css-color'
Plugin 'tristen/vim-sparkup'


" This should load at the end in order to integrate with other plugins
Plugin 'ryanoasis/vim-devicons'

call vundle#end()
