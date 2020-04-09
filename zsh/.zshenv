

# Node
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

# Python
eval "$(pyenv init -)"

# go
# gvm本体がないと動かない. 本杯は `zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)`
# でインストールできる. これを実行するとzshrc本体も書き換わるので注意.
[[ -s "/Users/ojisan/.gvm/scripts/gvm" ]] && source "/Users/ojisan/.gvm/scripts/gvm"

# rust
source ~/.cargo/env