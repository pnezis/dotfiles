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
    else
        if [ -f "$1" ]; then
            rm "$1"
        elif [ -d "$1" ]; then
            rm -rf "$1"
        fi
    fi
}


install_oh_my_zsh ()
{
    if [ -d "$HOME/.oh-my-zsh" ]; then
        echo "Oh-my-zsh is already installed!"
    else
        echo "Installing Oh-my-zsh..."
        git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"
    fi
}

switch_to_zsh ()
{
    # Check if current shell is already ZSH
    if [[ "$SHELL" == *"zsh"* ]]; then
        echo "Zsh is already the default shell!"
    else
        # Change the shell
        chsh -s `which zsh`
        echo "Changed the shell to zsh!"
    fi
}

install_oh_my_zsh
echo
switch_to_zsh
echo
echo "Copying zsh theme"
cp "$DIR/zsh/pnezis.zsh-theme" "$HOME/.oh-my-zsh/themes/pnezis.zsh-theme"
echo
echo "Removing existing configuration files..."
remove_file_dir $HOME/.vimrc
remove_file_dir $HOME/.vim
remove_file_dir $HOME/.zshrc
remove_file_dir $HOME/.dircolors
echo
echo "Creating symbolic links..."
ln -s $DIR/vimrc $HOME/.vimrc
ln -s $DIR/vim $HOME/.vim
ln -s $DIR/zshrc $HOME/.zshrc
ln -s $DIR/dircolors.256dark $HOME/.dircolors
echo
echo "Updating repository..."
git pull && git submodule init && git submodule update && git submodule status
echo
echo "Updating gnome terminala profile"
python $DIR/molokai-terminal.py
echo "Setting git colors"
$DIR/gitcolors.sh
echo "Successfully installed Dot Files. Start VIM and run :BundleInstall"
