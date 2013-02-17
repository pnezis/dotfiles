#!/bin/bash
# 
# Install the dotfiles. Notice that no backup is kept so be careful
# All config files are handled via symbolic links.
#
# The following files/directories get affected:
#   $HOME/.vimrc
#   $HOME/.vim/

# Get calling dir
# http://stackoverflow.com/questions/59838/how-to-check-if-a-directory-exists-in-a-shell-script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR

remove_file_dir ()
{
    if [ -L "$1" ]; then
        rm "$1"
        success "removed $1"
    else
        if [ -f "$1" ]; then
            rm "$1"
            success "removed $1"
        elif [ -d "$1" ]; then
            rm -rf "$1"
            success "removed $1"
        fi
    fi
}

# Functions borrowed from:
# https://github.com/holman/dotfiles/blob/master/script/bootstrap
success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_files () {
  ln -s $1 $2
  success "linked $1 to $2"
}

install_oh_my_zsh ()
{
    if [ -d "$HOME/.oh-my-zsh" ]; then
        success "Oh-my-zsh is already installed!"
    else
        git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
    fi
}

switch_to_zsh ()
{
    # Check if current shell is already ZSH
    if [[ "$SHELL" == *"zsh"* ]]; then
        success "Zsh is already the default shell!"
    else
        # Change the shell
        chsh -s `which zsh`
        success "Changed the shell to zsh!"
    fi
}

echo "Installing Oh-my-zsh..."
install_oh_my_zsh

echo "Making zsh default shell..."
switch_to_zsh

echo "Updating zsh theme..."
cp "$DIR/zsh/pnezis.zsh-theme" "$HOME/.oh-my-zsh/themes/pnezis.zsh-theme"
success "Updated zsh theme"

echo "Removing existing configuration files..."
remove_file_dir $HOME/.vimrc
remove_file_dir $HOME/.vim
remove_file_dir $HOME/.zshrc
remove_file_dir $HOME/.dircolors
remove_file_dir $HOME/.tmux
remove_file_dir $HOME/.tmux.conf
remove_file_dir $HOME/.tmux-powerlinerc

echo "Creating symbolic links..."
link_files $DIR/vim $HOME/.vim
link_files $DIR/vim/vimrc $HOME/.vimrc
link_files $DIR/zsh/zshrc $HOME/.zshrc
link_files $DIR/misc/dircolors.256dark $HOME/.dircolors
link_files $DIR/tmux $HOME/.tmux
link_files $DIR/tmux/tmux.conf $HOME/.tmux.conf
link_files $DIR/tmux/tmux-powerlinerc $HOME/.tmux-powerlinerc

echo "Updating repository..."
git pull && git submodule init && git submodule update && git submodule status
success "Updated repository and submodules"

echo "Updating gnome terminal profile..."
python $DIR/setup-scripts/molokai-terminal.py
success "Updated terminal profile"

echo "Setting global git configuration..."
$DIR/setup-scripts/gitconfig.sh
success "Applied global git configuration"

echo
echo "Successfully installed Dot Files. Restart terminal, start VIM and run :BundleInstall"
