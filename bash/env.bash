#!/bin/bash -eu

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
test -r /Users/ideyuta/.opam/opam-init/init.zsh && . /Users/ideyuta/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# llvm(clangd)
export PATH="/usr/local/opt/llvm/bin:$PATH"

# go
# gvm本体がないと動かない. 本杯は `zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)`
# でインストールできる. これを実行するとzshrc本体も書き換わるので注意.
[[ -s "/Users/ojisan/.gvm/scripts/gvm" ]] && source "/Users/ojisan/.gvm/scripts/gvm"

# rust
source ~/.cargo/env

# gcloud
# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/completion.zsh.inc'; fi

echo "setuped env"