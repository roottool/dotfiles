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
  - Debian Bullseye

## ⚙️ Required Components

- [Homebrew/brew](https://github.com/Homebrew/brew)
- [starship/starship](https://github.com/starship/starship)
- [zdharma-continuum/zinit](https://github.com/zdharma-continuum/zinit)

## 🔰 How to use

1. Clone this repository
2. Move to the cloned repository
3. Execute the command

    ```bash
    make install
    ```

4. Create `~/.gitconfig_local`

   The example is [here](example/.gitconfig_local).

5. Create `~/local.zsh`

   The example is [here](example/local.zsh).

6. Reboot your distribution
