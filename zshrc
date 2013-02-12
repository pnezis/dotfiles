# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="pnezis"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# oh-my-zsh plugins to load
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# Define 256 Color term
# export TERM=xterm-256color

# Set ls colors
eval `dircolors $HOME/.dircolors`
