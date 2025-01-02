# Initialization
##  Zsh
SCRIPT_DIR=$HOME/.zsh
source "$SCRIPT_DIR/aliases.zsh"
source "$SCRIPT_DIR/history.zsh"
source "$HOME/local.zsh"

## sheldon
eval "$(sheldon source)"

## eza
if type brew &>/dev/null; then
  export FPATH="/home/linuxbrew/.linuxbrew/bin/eza/completions/zsh:$FPATH"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

## fzf
source <(fzf --zsh)
