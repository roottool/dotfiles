#!/bin/bash

# Define the flag file
FLAG_FILE="$HOME/.install_flag"

# Check if the flag file exists
if [ -f "$FLAG_FILE" ]; then
  echo "The install script has already been executed. Skipping installation."
  exit 0
fi

# Function to check the OS
check_os() {
  . /etc/os-release
  if [[ "$ID" == "debian" ]]; then
    DISTRO_ID="debian"
    DISTRO_NAME="Debian"
  elif [[ "$ID" == "ubuntu" ]]; then
    DISTRO_ID="ubuntu"
    DISTRO_NAME="Ubuntu"
  else
    echo "This script can only be run on Debian or Ubuntu."
    exit 1
  fi
}

# Check the OS
check_os

# Update and upgrade Debian/Ubuntu
sudo apt update
sudo apt upgrade -y

# Install dependencies for Homebrew
sudo apt install -y \
  build-essential \
  ca-certificates \
  curl \
  file \
  git \
  unzip \
  zip

# Install Docker
## Add Docker's official GPG key:
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL "https://download.docker.com/linux/$DISTRO_ID/gpg" -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] "https://download.docker.com/linux/$DISTRO_ID" \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] "https://download.docker.com/linux/$DISTRO_ID" $(. /etc/os-release && echo "$VERSION_CODENAME") stable"
# Install Docker packages and Docker compose
sudo apt update
sudo apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --file ./Brewfile

# Change the default shell to zsh
sudo sh -c "echo '/home/linuxbrew/.linuxbrew/bin/zsh' >> /etc/shells"
chsh -s /home/linuxbrew/.linuxbrew/bin/zsh

# Set up by Chezmoi
chezmoi init --source . --apply

# Create the flag file to indicate the script has been executed
touch "$FLAG_FILE"

echo "Installation completed successfully on $DISTRO_NAME."
