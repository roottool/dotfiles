# BROWSER
export BROWSER='Your browser execution file path'

# PATH
export WINDOWS_VSCODE='Your VS Code folder path within Windows'
export PATH=$WINDOWS_VSCODE/bin:$PATH

# Check update
updateCheckCmd="brew outdated"
if [[ -n $(eval $updateCheckCmd) ]]; then
  # Update by Homebrew
  brew update
  brew upgrade
  brew autoremove
  brew cleanup
fi
