# Shell setup
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="miloshadzic"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby github zsh-syntax-highlighting wd)
source $ZSH/oh-my-zsh.sh

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# misc
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
alias pepene='cucumber'
alias gbl='git branch --list'
alias grv='git remote --verbose'
alias top='top -o cpu'
alias htop='htop --sort-key CPU'
alias fmod='stat -f "%OLp"'
alias dl='diskutil list'
alias be='bundle exec'
alias gac='git add --all && git commit -m'
alias gbc='git branch --merged | grep -v \* | xargs git branch -d'
alias gpm='git pull main master'
alias this='open .'

# Suffix aliases
alias -s pl=perl
alias -s c=cc
alias -s cpp=gcc
alias -s log="less -MN"
alias -s rb=ruby

# Colors
alias ls='ls -FG'
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

# Exports
export PATH=$PATH:/Users/nemesis/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/nemesis/.local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin
export TERM="xterm-256color"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Say hello
HI="Hello and welcome to `whoami`'s workstation!"
echo $HI

if [ "$(date +%A)" = "Friday" ] && [ $(date +%H) -gt 18 ]; then
  echo "Maybe grab some 🍻 already?"
fi
