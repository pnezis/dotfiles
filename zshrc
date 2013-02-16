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

# Free up up Ctrl-S and Ctrl-Q for use with Vim:
stty -ixon -ixoff

# Set ls colors
eval `dircolors $HOME/.dircolors`

# Force tmux to assume that terminal supports 256 colors
alias tmux="tmux -2"
