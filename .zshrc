ZSH=$HOME/.oh-my-zsh
plugins=(git ruby perl github jump zsh-syntax-highlighting)

cd ~/Documents/nemesis/code

# aliases

alias ccon='ping 8.8.8.8'
alias cp='cp -iv'
alias mv='mv -iv'
alias la='ls -alh'
alias cl='clear'
alias chr='google-chrome'
alias lss='ls -l'
alias rmd='rm -rf'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias lock='xscreensaver-command -activate'
alias processing='~/Documents/nemesis/soft/processing-2.0.3/processing'
alias mkdir='mkdir -p'
alias grep='grep --color'

# suffix aliases

alias -s pl=perl
alias -s c=cc
alias -s cpp=gcc
alias -s log="less -MN"
alias -s html=chr

# ls colors

alias ls='ls -FG'
alias grep='grep --color=never'

export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

[[ -s "$home/.rvm/scripts/rvm" ]] && source "$home/.rvm/scripts/rvm" # load rvm into a shell session *as a function*

ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/bin/perl:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/nemesis/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/bin:/Users/nemesis/anaconda/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/nemesis/.local/bin:/opt/local/bin:/opt/local/sbin
export TERM="xterm-256color"
#export LS_COLORS='ex=1;31:di=32'

#temp
alias runos='. ~/Documents/nemesis/code/myos/run.sh'
export PATH="$HOME/opt/cross/bin:$PATH"
export PATH=$PATH:/bin

# say hello
HI="Hello and welcome to nemesis's workstation!"
echo $HI
