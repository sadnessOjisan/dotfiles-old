#!/bin/bash -eu

# .bashrc を読み直す
alias br="source ~/.bashrc"

###
### Git系
###

alias g='git'
alias gb='git branch'
alias gbc='git checkout -b'
alias gc='git commit --verbose'
alias gco='git checkout'
alias gia='git add'
alias gm='git merge'
alias gp='git push'
alias gfm='git pull'

# GitHubを表示
alias hb="hub browse"

echo "setuped alias"