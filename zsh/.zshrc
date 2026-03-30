# Shell setup
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"
COMPLETION_WAITING_DOTS="true"
plugins=(git ruby github wd) # per-directory-history doesn't play well with warp?
source $ZSH/oh-my-zsh.sh

# Profiling
# zmodload zsh/zprof

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
alias htop='htop --sort-key PERCENT_CPU'
alias fmod='stat -f "%OLp"'
alias dl='diskutil list'
alias be='bundle exec'
alias gac='git add --all && git commit -m'
alias gbc='git branch --merged | grep -v \* | xargs git branch -d'
alias gpos='git pull origin staging'
alias this='open .'
alias c='cargo'
alias vi='nvim'
alias vim='nvim'
alias ping='gping'

gitrecent() {
  git for-each-ref --sort=-committerdate refs/heads/ | gawk 'match($0, /.*refs\/heads\/(.*)$/, a) {print a[1]}' | head
}

gitsummary() {
  git --no-pager diff --stat @{upstream}
}

csv() {
  echo "
  Columns: $(head -1 $1 | sed 's/[^,]//g' | wc -c)
  Rows: $(wc -l < $1)
  " | column -t
}

gbc-interactive() {
  git branch --no-color | fzf -m | xargs -I {} git branch -D '{}'
}

# Suffix aliases
alias -s pl=perl
alias -s c=cc
alias -s cpp=gcc
alias -s log="less -MN"
alias -s rb=ruby

# Colors
alias ls='~/.ls_extended'
alias ll='~/.ls_extended -lah'

alias pip=pip3
alias python=python3
alias irb="irb --noautocomplete -r 'csv' -r 'set' -r 'json' -r '~/.ruby_helpers.rb' -r 'array_stats'"
alias comp="mogrify -quality 80%"
alias pwdcp="pwd | pbcopy"
alias dsm="command ssh dsm"

# Exports
export GREP_OPTIONS='--color=auto'
export TERM="xterm-256color"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export optflags="-Wno-error=implicit-function-declaration"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

autoload -U add-zsh-hook colors && colors
load-nvmrc() {
  [[ -a .nvmrc ]] || return
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

autoload -Uz compinit
compinit

eval "$(/opt/homebrew/bin/brew shellenv)"

source ~/.extras.sh

# rbenv
eval "$(rbenv init - zsh)"

export DISPLAY=:0.0
export PATH="/opt/homebrew/opt/mysql@8.0/bin:/usr/local/go/bin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/opt/homebrew/opt/mise/bin/mise activate zsh)"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
# Append Warp and McFly history to shell history
python3 /Users/nemesis/Code/warp-history/warp-history.py

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nemesis/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nemesis/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nemesis/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nemesis/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/Users/nemesis/.local/bin"

if [ "$(date +%A)" = "Friday" ] && [ $(date +%H) -gt 18 ]; then
  echo "Maybe grab some 🍻 already?"
fi
