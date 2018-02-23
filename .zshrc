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

# ZSH Plugins
plugins=(git lol python)

# User configuration
export DEFAULT_USER="melderaldo"

# export MANPATH="/usr/local/man:$MANPATH"

# Set language environment
export LANG=en_US.UTF-8

# Editor for local and remote sessions
export EDITOR='code'

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Set alias
source $HOME/.zsh_alias
source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function hi_beauty(){
  eval "cat $HOME/dotfiles/.hi_beauty.txt"
  echo \
}

hi_beauty

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export GPG_TTY=$(tty)

function setjdk() {  
	if [ $# -ne 0 ]; then  
	removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'  
	if [ -n "${JAVA_HOME+x}" ]; then  
	removeFromPath $JAVA_HOME  
	fi  
	export JAVA_HOME=`/usr/libexec/java_home -v $@`  
	export PATH=$JAVA_HOME/bin:$PATH  
	fi  
	echo JAVA_HOME set to $JAVA_HOME  
	java -version  
	}  
	function removeFromPath() {  
	export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")  
}