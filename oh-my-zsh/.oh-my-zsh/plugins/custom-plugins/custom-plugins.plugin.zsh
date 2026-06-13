#Zoxide
if command -v zoxide &> /dev/null; then
  eval "$(zoxide init zsh)"
  alias cd=z
  alias cdi=zi
fi

# Starship
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

# Helix
alias hx="helix"

# cd
alias ..="cd .."
alias ...="cd ../.."

# mkdir and cd
mkcd() {
  mkdir -p $1 && cd $1
}
