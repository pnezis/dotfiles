set nocompatible         " Disable vi-compatibility
filetype off             " required!

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" let Vundle manage Vundle
" required! 
Plug 'gmarik/vundle'

" color schemes & UI plugins
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/ZoomWin'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'

" Text manipulation plugins
Plug 'tpope/vim-surround' 
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
" Plug 'Valloric/YouCompleteMe'
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Version Control Systems integration plugins
Plug 'tpope/vim-fugitive'

" File/Code management plugins
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'
"Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'mattn/emmet-vim'
"Plug 'mileszs/ack.vim'
"Plug 'davidhalter/jedi-vim'

" Other plugins
Plug 'vim-scripts/vimwiki'

" Specific language plugins
Plug 'vim-scripts/a.vim'
Plug 'wavded/vim-stylus'
Plug 'slashmili/alchemist.vim'
" Plug 'python-mode/python-mode'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'

" Web development plugins
Plug 'ap/vim-css-color'
Plug 'tristen/vim-sparkup'


" This should load at the end in order to integrate with other plugins
Plug 'ryanoasis/vim-devicons'

" Deoplete
"Plug 'Shougo/deoplete.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()
