# Homebrew
## Initialization
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## Update packages
brew update
updateCheckCmd="brew outdated"
if [[ -n $(eval $updateCheckCmd) ]]; then
  brew upgrade
  brew autoremove
  brew cleanup
fi
