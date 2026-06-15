# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="helix"
export PATH="${PATH}:${HOME}/.local/bin"

#Zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init bash)"
  alias cd=z
  alias cdi=zi
fi

# Starship
if command -v starship &>/dev/null; then
  eval "$(starship init bash)"
fi

# Helix
alias hx="helix"

# Change directory contents
alias -- -="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


# List directory contents
alias ls="ls --color=auto"
alias lsa="ls -lah --color=auto"
alias l="ls -lah --color=auto"
alias ll="ls -lh --color=auto"
alias la="ls -lAh --color=auto"

alias grep="grep --color=auto"

alias md='mkdir -p'
alias rd=rmdir
# mkdir and cd
mkcd() {
  mkdir -p $1 && cd $1
}
