# Shell setup
source $HOME/.bashrc # Some packages ignore the default shell and use bash for configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby github jump zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Who doesn't love rvm?
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Aliases
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
export PATH=$PATH:/usr/bin/perl:/Users/nemesis/.rvm/gems/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/nemesis/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/nemesis/.local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin
export TERM="xterm-256color"

# Give me my code
jump code

# Say hello
HI="Hello and welcome to `whoami`'s workstation!"
echo $HI

if [ "$(date +%A)" = "Friday" ] && [ $(date +%H) -gt 18 ]; then
  echo "Maybe grab some 🍻  already?"
fi

# Soft delete branches in a git repo
# Example usage: gbd my-merged-branch
function gbd() {
    if [[ -n $1 ]]; then
        git branch -d $1
    else
        echo "No branch name specified"
    fi
}
