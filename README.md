<!-- markdownlint-disable MD033 MD041 -->
<div align="center">
  <h1>roottool's dotfiles</h1>
  <img alt="Sample" src="https://github.com/user-attachments/assets/9b6a17d3-101c-4a0f-bbf0-d59f1536eb86"/>
</div>

## ℹ️ Overview

This dotfiles repository is intended to be used for Debian or Ubuntu under WSL2.

## 🖥️ My environment

- Windows 11
- WSL2
  - Debian 12 (bookworm)

## ⚙️ Included Components

- [Homebrew/brew](https://brew.sh)
- [chezmoi](https://www.chezmoi.io)
- [sheldon](https://sheldon.cli.rs)
- [starship/starship](https://starship.rs)
- [mise](https://mise.jdx.dev)
- [Docker](https://www.docker.com)

## 🔰 How to use

1. Clone this repository
2. Create `~/.gitconfig_local`

   The example is [here](example/.gitconfig_local).

3. Create `~/local.zsh`

   The example is [here](example/local.zsh).

4. Move to the cloned repository
5. Execute the install script

    ```bash
    chmod +x install-packages.sh
    ./install-packages.sh
    ```

6. Reboot your distribution
