# Starship
eval "$(starship init zsh)"

# Helix
alias hx="helix"

# cd
alias ..="cd .."
alias ....="cd ../.."

# ls
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll="ls -la --color=auto"

# mkdir and cd
mkcd() {
  mkdir -p $1 && cd $1
}
