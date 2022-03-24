# BROWSER
export BROWSER='Your browser execution file path'

# PATH
export WINDOWS_VSCODE='Your VS Code folder path within Windows'
export PATH=$WINDOWS_VSCODE/bin:$PATH

# Update by Homebrew
brew update
brew upgrade
brew autoremove
brew cleanup

# Update by zinit and plugins
zinit self-update
zinit update --parallel
