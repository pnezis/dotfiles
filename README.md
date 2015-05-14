# Yet Another Dotfiles Repository

## Screenshots

*Vim splits*
![Screenshot 1](https://github.com/pnezis/dotfiles/raw/master/screenshots/vim.png)

*Vim & Zsh & Tmux & Tmux powerline & molokai xterm profile*
![Screenshot 2](https://github.com/pnezis/dotfiles/raw/master/screenshots/tmux.png)

## Installation

1. `git clone http://github.com/pnezis/dotfiles.git ~/dotfiles`
2. `cd ~/dotfiles`
3. Run `install.sh` to create symbolic links and install dependencies.
4. Run Vim and type `:BundleInstall` to install the plugins with Vundle.

> Notice that the `install` script does not keep any backup. Be careful
> when using it. Existing configuration files will get deleted.

## Vim Plugins

### Color schemes & UI Plugins

* [Molokai color scheme](https://github.com/tomasr/molokai) - Molokai is a Vim
port of the monokai theme for TextMate originally created by Wimer Hazenberg.
* [Airline](https://github.com/bling/vim-airline) - The ultimate vim 
statusline utility. 

> It is necessary to have `vim-gnome` installed for patched fonts.

> In order to have working patched fonts clone the 
[powerline-fonts](https://github.com/powerline/fonts) repository and run the
`install.sh` script. Also **do not forget to change the default to a powerline
font in the terminal's properties.**

* [WebDevicons](https://github.com/ryanoasis/vim-webdevicons) amazing icons for
the powerline and the nerdtreee that indicate the file type. A patched font has
to be installed as well. Read the installation instructions at the plugin 
homepage for more details.

* [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out of windows 
(toggle between one window and multi-window)


### Text manipulation plugins

* [Vim Surround](https://github.com/tpope/vim-surround) - The plugin provides 
mappings to easily delete, change and add such surroundings in pairs.
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for 
intensely orgasmic commenting 
* [Tabular](https://github.com/godlygeek/tabular) - Vim script for text 
filtering and alignment 

### Version Control System integration plugins

* [Vim Fugitive](https://github.com/tpope/vim-fugitive) - a Git wrapper so 
awesome, it should be illegal

### File & Code management plugins

* [NErdTree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin 
for vim.

> In order to add a file navigate to a directory, press `m` and then `a` to 
> add a child node.

* [Command-T](https://github.com/wincent/Command-T) - Command-T plug-in for Vim

> Notice that Command-T needs manual installation. Check 
> the [README](https://github.com/wincent/Command-T) for more details
> 
> `cd ~/.vim/bundle/command-t/ruby/command-t`
> `ruby extconf.rb`
> `make`

* [Tagbar](https://github.com/majutsushi/tagbar) - Vim plugin that displays 
tags in a window, ordered by class etc.
* [Syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks
 for vim. 
* [Vim Indent Guides](https://github.com/mutewinter/vim-indent-guides) - A Vim 
plugin for visually displaying indent levels in code
* [Ultisnips](https://github.com/SirVer/ultisnips) -  An implementation of 
TextMates Snippets for the Vim Text Editor.

### Other plugins

* [Vimwiki](https://github.com/vim-scripts/vimwiki) - Personal wiki for Vim.

## Custom VIM mappings

* `<leader>n` : Toggle nerd tree
* `<leader>p` : Toggle Tag Bar
* `<leader>z` : Zoom Win
* `vv` : Vertical window split
* `ss` : Horizontal window split
