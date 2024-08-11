alias ll="eza -l -h -@ -mU --icons --git --time-style=long-iso --color=automatic --group-directories-first"
alias l="ll -aa"

# Git
alias g=git
alias gpf='g push --force-with-lease --force-if-includes'

# Docker
alias d=docker
alias dps='d ps'
alias deit='d exec -it'
alias dlogs='d logs'
alias dimgs='d images'
alias drminone='d rmi `dimgs -aq`'

# Docker compose
alias dc='d compose'
alias docker-compose=dc
alias dcup='dc up'
alias dcupd='dc up -d'
alias dcdown='dc down'
alias dcstart='dc start'
alias dcstop='dc stop'
alias dcrestart='dc restart'

alias pbcopy='xsel --clipboard --input'
