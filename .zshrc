### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
  command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
  command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
    print -P "%F{33} %F{34}Installation successful.%f%b" || \
    print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

# Init Zsh
SCRIPT_DIR=$HOME/.zsh
source "$SCRIPT_DIR/aliases.zsh"
source "$SCRIPT_DIR/history.zsh"
source "$SCRIPT_DIR/zinit.zsh"
source "$HOME/local.zsh"

# Init eza
if type brew &>/dev/null; then
  export FPATH="/home/linuxbrew/.linuxbrew/bin/eza/completions/zsh:$FPATH"
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

# Init starship
eval "$(starship init zsh)"

# Init mise
eval "$(/home/roottool/.local/bin/mise activate zsh)"
