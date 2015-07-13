#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Set JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# By default, there is a 0.4 second delay after you hit the <ESC>.
# Reducing this delay to 0.1 seconds.
export KEYTIMEOUT=1

# aliases
alias p=pushd
alias o=popd
alias la="ls -al"

export COMMANDER_SERVER="commanderserver.gapinc.dev"

PATH="$PATH:/opt/electriccloud/electriccommander/bin"
PATH="/usr/local/bin:$PATH"
PATH="$HOME/.jenv/bin:$PATH"
PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
MAVEN_OPTS=-Xmx1024m

set TERM="xterm"

bindkey -v

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
