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


echo "Removing existing configuration files..."
remove_file_dir $HOME/.vimrc
remove_file_dir $HOME/.vim

echo "Creating symbolic links..."
ln -s $DIR/vimrc $HOME/.vimrc
ln -s $DIR/vim $HOME/.vim

echo "Updating repository..."
git pull && git submodule init && git submodule update && git submodule status

echo
echo "Start VIM and run :BundleInstall"
