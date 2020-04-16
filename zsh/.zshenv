

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
test -r /Users/ideyuta/.opam/opam-init/init.zsh && . /Users/ideyuta/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Python
eval "$(pyenv init -)"

# go
# gvm本体がないと動かない. 本杯は `zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)`
# でインストールできる. これを実行するとzshrc本体も書き換わるので注意.
[[ -s "/Users/ojisan/.gvm/scripts/gvm" ]] && source "/Users/ojisan/.gvm/scripts/gvm"

# rust
source ~/.cargo/env