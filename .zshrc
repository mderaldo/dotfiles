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


source $ZSH/oh-my-zsh.sh


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
 alias zshconfig="vim ~/.zshrc"
 alias ohmyzsh="vim ~/.oh-my-zsh"


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

#Color scheme
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


