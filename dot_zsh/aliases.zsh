# shellcheck disable=SC2148

# eza
alias ll="eza -l -h -@ -mU --icons --git --time-style=long-iso --color=automatic --group-directories-first"
alias l="ll -aa"

# Docker compose
alias docker-compose=dc

# Delete merged branches
alias g-delete-merged-branches='git branch --merged | grep -v "*" | grep -v "^+" | xargs git branch -d'

alias pbcopy='xsel --clipboard --input'
