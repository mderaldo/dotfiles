# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/bin/$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

[ -f "$HOME/.powerlevel9k" ] && { echo "$HOME/.powerlevel9k exist"; source $HOME/.powerlevel9k; ZSH_THEME="powerlevel9k/powerlevel9k";}

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true

# Autosuggestion Plugin configuration 
ZSH_AUTOSUGGEST_STRATEGY='match_prev_cmd'
bindkey 'RIGHT' autosuggest-accept
# Auto completitions
autoload -U compinit && compinit

# ZSH Plugins
plugins=(	git 
			brew 
			gradle
			jenv
			node
			zsh-autosuggestions 
			zsh-syntax-highlighting 
			zsh-completions
		)


# User configuration
# To hide the username from the prompt inform the username in the DEFAULT_USER
export DEFAULT_USER="mel"


export MANPATH="/usr/local/man:$MANPATH"

# Set language environment
export LANG=en_US.UTF-8

# Editor for local and remote sessions
export EDITOR='code'

# SSH
export SSH_KEY_PATH="~/.ssh"

# load ssh-agent and add my keys
eval "$(ssh-agent -s)"
[ -f $SSH_KEY_PATH ] && { echo "$SSH_KEY_PATH exist"; ssh-add -K "$SSH_KEY_PATH/rsa_id*"; }

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Set alias
[ -f "$HOME/.zsh_alias" ] && { echo "$HOME/.zsh_alias exist"; source $HOME/.zsh_alias; }
[ -f "$ZSH/oh-my-zsh.sh" ] && { echo "$ZSH/oh-my-zsh.sh exist"; source $ZSH/oh-my-zsh.sh; }


# function hi_beauty(){
#   [ -f $HOME/.dotfiles/.hi_beauty.txt ] && eval "cat $HOME/.dotfiles/.hi_beauty.txt"
#   echo \
# }

# Set jEnv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi 

# Highlight 
#export ZSH_HIGHLIGHTING_EXTENSION="/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

#[ -f ZSH_HIGHLIGHTING_EXTENSION ] && { echo "$ZSH_HIGHLIGHTING_EXTENSION exist"; source ZSH_HIGHLIGHTING_EXTENSION; }

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh