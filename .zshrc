# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/bin/$PATH


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true

# ZSH Plugins
plugins=(git lol python brew zsh-autosuggestions zsh-syntax-highlighting)

# User configuration
# To hide the username from the prompt inform the username in the DEFAULT_USER
DEFAULT_USER='whoami'


export MANPATH="/usr/local/man:$MANPATH"

# Set language environment
export LANG=en_US.UTF-8

# Editor for local and remote sessions
export EDITOR='code'

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Set alias
[ -f $HOME/.zsh_alias ] && source $HOME/.zsh_alias
[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh

function hi_beauty(){
  eval "cat $HOME/.dotfiles/.hi_beauty.txt"
  echo \
}

hi_beauty

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change
export GPG_TTY=$(tty)

