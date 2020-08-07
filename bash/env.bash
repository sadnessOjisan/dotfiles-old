#!/bin/bash -eu

echo "start load env"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# llvm(clangd)
export PATH="/usr/local/opt/llvm/bin:$PATH"

# rust
source ~/.cargo/env

echo "setuped env"