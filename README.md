<!-- markdownlint-disable MD033 MD041 -->
<div align="center">
  <h1>roottool's dotfiles</h1>
  <img alt="Sample" src="https://user-images.githubusercontent.com/11808736/146920735-d30c270e-992f-441f-82cf-9dfdce51f613.png"/>
</div>

## ℹ️ Overview

This dotfiles repository is intended to be used for Linux distributions under WSL2.

## 🖥️ My environment

- Windows 11
- WSL2
  - Debian 12 (bookworm)

## ⚙️ Required Components

- [Homebrew/brew](https://brew.sh)
- [chezmoi](https://www.chezmoi.io)
- [sheldon](https://sheldon.cli.rs)
- [starship/starship](https://starship.rs)

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
