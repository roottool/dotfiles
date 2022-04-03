# ref: https://github.com/b4b4r07/dotfiles/blob/master/Makefile

DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*)
EXCLUSIONS := .DS_Store .config .dccache .editorconfig .git .github .gitmodules
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
CONFIG_LIST := $(wildcard .config/**)

.DEFAULT_GOAL := help

list: ## Show dot files in this repo.
	@$(foreach val, $(CONFIG_LIST), /bin/ls -dF $(val);)
	@$(foreach val, $(DOTFILES), /bin/ls -dF $(val);)

install: ## Create symlink to home directory.
	@echo 'Copyright (c) 2013-2015 BABAROT All Rights Reserved.'
	@echo '==> Start to deploy config files to home config directory.'
	@echo ''
	@$(foreach val, $(CONFIG_LIST), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
	@echo ''
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

clean: ## Remove symlink.
	unlink ${HOME}/.config/git || true \
	&& unlink ${HOME}/.config/starship.toml || true \
	&& unlink ${HOME}/.zsh || true \
	&& unlink ${HOME}/.gitconfig || true \
	&& unlink ${HOME}/.profile || true \
	&& unlink ${HOME}/.zprofile || true \
	&& unlink ${HOME}/.zshenv || true \
	&& unlink ${HOME}/.zshrc || true

help: ## Self-documented Makefile.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
