# opam configuration
source /Users/ojisan/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

# llvm(clangd)
# set -x PATH "/usr/local/opt/llvm/bin:$PATH"

# volta
# volta を install したら .volta に展開される
set -x VOLTA_HOME $HOME/.volta
set -x PATH $VOLTA_HOME/bin $PATH

# go
# gvm本体がないと動かない. 本杯は `zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)`
# でインストールできる. これを実行するとzshrc本体も書き換わるので注意.
# source "/Users/ojisan/.gvm/scripts/gvm"

# rust
source ~/.cargo/env

# GCP系は一旦諦めてる

# gcloud
# The next line updates PATH for the Google Cloud SDK.
# source '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
# source '/Users/ideyuta/Documents/300_setting/google-cloud-sdk/completion.zsh.inc'