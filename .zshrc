# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


export M2_HOME=/usr/local/Cellar/maven/3.3.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH


export EDITOR='vim'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# # ZSH Plugins
plugins=(git cp tmux vi-mode docker rvm gitignore npm nvm vim-interactioni vundle)

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

source $ZSH/oh-my-zsh.sh

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# Aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ls="ls -al"

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


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/opt/local/bin
export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info 

source $HOME/.rvm/scripts/rvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
