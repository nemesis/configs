ZSH=$HOME/.oh-my-zsh
plugins=(git osx ruby perl scala github python jump)

# aliases

alias ccon='ping 8.8.8.8'
alias cp='cp -iv'
alias mv='mv -iv'
alias la='ls -alh'
alias cl='clear'
alias chr='google-chrome'
alias lss='ls -l'
alias rmd='rm -rf'

# suffix aliases

alias -s pl=perl
alias -s c=cc
alias -s cpp=gcc
alias -s log="less -MN"
alias -s html=chr
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"

[[ -s "$home/.rvm/scripts/rvm" ]] && source "$home/.rvm/scripts/rvm" # load rvm into a shell session *as a function*


ZSH_THEME="agnoster"
#ZSH_THEME="powerline"

DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/bin/perl:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/nemesis/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/bin:/Users/nemesis/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin

cd ~/Documents/nemesis/code

# say hello
HI="Hello and welcome to nemesis's workstation!"
echo $HI

# ls colors

alias ls='ls -F --color'
alias grep='grep --color=never'
export LS_COLORS='ex=1;31:di=32'

# more aliases

alias lock='xscreensaver-command -activate'
alias processing='~/Documents/nemesis/soft/processing-2.0.3/processing'
alias open='xdg-open'
alias mkdir='mkdir -p'
alias vbuild='valac --pkg gtk+-3.0'

#temp
alias runos='. ~/Documents/nemesis/code/myos/run.sh'

export PATH="$HOME/opt/cross/bin:$PATH"


