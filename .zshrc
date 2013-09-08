# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
plugins=(git osx ruby perl scala github python)

alias rfink='. /sw4/bin/init.sh'
alias ccon='ping 8.8.8.8'
alias rm='rm -i'
alias cp='cp -iv'
alias mv='mv -iv'
alias la='ls -alh'
alias ip='ipython'
alias cl='clear'
alias chr='google-chrome'
[[ -s "$home/.rvm/scripts/rvm" ]] && source "$home/.rvm/scripts/rvm" # load rvm into a shell session *as a function*

ZSH_THEME="agnoster"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/nemesis/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/bin:/Users/nemesis/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin

cd ~/Documents/nemesis
