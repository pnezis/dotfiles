" VIM configuration

" Basic Settings {{{
" Set UTF-8 encoding in order to correctly show Glyphs in powerline
set encoding=utf-8
"set visualbell
"set splitbelow    " Split below current window
"set splitright    " Split right of current window
set backspace=2    " Fix backspase issues. Make it work like other apps.
" }}}

" Color Scheme {{{
" Force VIM to use 256 color terminal in order to correctly support the
" color scheme
set t_Co=256
" set background=dark
color onedark
syntax on
" }}}

" UI Configuration {{{
set ruler          " Ruler on
set number         " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
if exists('+colorcolumn')
  set colorcolumn=80 " Color the 80th column differently as a wrapping guide
endif
set cursorline     " Highlight current line
set showtabline=0  " Do not show tabline. We use minibufexpl
set completeopt=menuone " Disable the preview option
set relativenumber " Relative line numbers
" Mouse settings (for mac)
set mouse=nicr
" }}}

" Searching "{{{
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
let @/ = ""    " Clear last search pattern
"}}}

" Visual {{{
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set scrolloff=5 " Scroll 5 lines before the border
"}}}

" Text Format {{{
set tabstop=4
set shiftwidth=4 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab
"}}}

" Trailing whitespace {{{
set list                        " Show invisible characters
set listchars=""                " Reset the listchars
set listchars=tab:\ \           " a tab should display as "  ", trailing
                                " whitespace as "."
set listchars+=trail:.          " show trailing spaces as dots
set listchars+=extends:>        " The character to show in the last
                                " column when wrap is off and the line 
                                " continues beyond the right of the screen
set listchars+=precedes:<       " The character to show in the last column
                                " when wrap is offi and the line continues
                                " beyond the right of the screen
"}}}

" Folding {{{

set foldlevelstart=0
set foldmethod=manual
set foldnestmax=10
set foldlevel=2
" }}}

" Clipboard {{{
set clipboard=unnamed
"  }}}
