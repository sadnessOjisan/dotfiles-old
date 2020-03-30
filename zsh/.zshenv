

# Node
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

# Python
eval "$(pyenv init -)"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# rust
source ~/.cargo/env