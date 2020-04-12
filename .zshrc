export TERM="xterm-256color"
export WORK="/Users/kjhank/Sites"
export WWW="/Users/kjhank/Sites/personal/"

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
alias ls='ls -ahl'
alias psg='ps -Ao pid,command | grep'
alias psgi='ps -Ao pid,command | grep -i'
alias vim='nvim'
alias cdgr='cd "$(git rev-parse --show-toplevel)"'

function backup {
    command cp $1{,.bak}
}

function mkcd {
    command mkdir $1 && cd $1
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
