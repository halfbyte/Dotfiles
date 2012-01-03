# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="juanghurtado"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

plugins=(rails3 git textmate ruby bundler git-flow github rvm brew)

source $ZSH/oh-my-zsh.sh

unsetopt auto_name_dirs

# Customize to your needs...
export PATH=/usr/local/mysql/bin:/usr/local/mongodb/bin:/Applications/liftweb-1.0.1/apache-maven/bin:/usr/local/git/bin:/Users/jan/bin:/Users/jan/.gem/ruby/1.8/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/texbin:/usr/X11/bin

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi

if [[ -s "/usr/local/Cellar/cdargs/1.35/contrib/cdargs-bash.sh" ]] ; then source "/usr/local/Cellar/cdargs/1.35/contrib/cdargs-bash.sh" ; fi

# if [[ -s "$HOME/Documents/docbook-xsl-1.75.2/profile.incl" ]] ; then source "$HOME/Documents/docbook-xsl-1.75.2/profile.incl" ; fi

if [ -e "/usr/local/CrossPack-AVR" ]; then
PATH="$PATH:/usr/local/CrossPack-AVR/bin"
export PATH
fi

export EDITOR="/usr/bin/mate -w"

export HAXE_LIBRARY_PATH="`brew --prefix`/share/haxe/std"

export PATH=`npm bin`:$PATH

alias t="ruby -Itest"

alias webserver="python -m SimpleHTTPServer" 