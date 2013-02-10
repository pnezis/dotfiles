# Yet Another Dotfiles configuration

## Screenshots

## Installation

1. `git clone http://github.com/pnezis/dotfiles.git ~/dotfiles`
2. `cd ~/dotfiles`
3. Run `setup.sh` to create symbolic links and install dependencies.
4. Run Vim and type `:BundleInstall` to install the plugins with Vundle.

## Vim Plugins

### Color schemes & UI Plugins

* [Molokai color scheme](https://github.com/tomasr/molokai) - Molokai is a Vim
port of the monokai theme for TextMate originally created by Wimer Hazenberg.
* [Powerline](https://github.com/Lokaltog/vim-powerline) - The ultimate vim 
statusline utility. 

> It is necessary to have `vim-gnome` installed for patched fonts.

### Text manipulation plugins

* [Vim Surround](https://github.com/tpope/vim-surround) - The plugin provides 
mappings to easily delete, change and add such surroundings in pairs.

### Version Control System integration plugins

* [Vim Fugitive](https://github.com/tpope/vim-fugitive) - a Git wrapper so 
awesome, it should be illegal

### File management plugins

* [NErdTree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin 
for vim.
* [Command-T](https://github.com/wincent/Command-T) - Command-T plug-in for Vim

> Notice that Command-T needs manual installation. Check 
> the [README](https://github.com/wincent/Command-T) for more details

## Custom VIM mappings

* `<leader>n` : Toggle nerd tree
