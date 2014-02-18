# shell setup
source $HOME/.bashrc # some packages ignore the default shell and use bash for configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby github jump zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# who doesn't love rvm?
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# aliases
alias ccon='ping 8.8.8.8'
alias cp='cp -iv'
alias mv='mv -iv'
alias la='ls -alh'
alias cl='clear'
alias lss='ls -l'
alias rmd='rm -rf'
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias mkdir='mkdir -p'
alias calabash='pepene'

# suffix aliases
alias -s pl=perl
alias -s c=cc
alias -s cpp=gcc
alias -s log="less -MN"
alias -s rb=ruby

# colors
alias ls='ls -FG'
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

# exports
export PATH=$PATH:/usr/bin/perl:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/nemesis/.local/bin:/opt/local/bin:/opt/local/sbin
export TERM="xterm-256color"

# give me my code
jump code

# say hello
HI="Hello and welcome to `whoami`'s workstation!"
echo $HI
