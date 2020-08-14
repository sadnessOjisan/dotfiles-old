## install

```
# fish install
brew install fish
```

## setting

### config

```sh
# reset config
% rm -rf ~/.config/fish

# create config dir
% mkdir -p ~/.config/fish

# set config dir
% cp -rf ./fish/ ~/.config/fish/conf.d
```

設定ファイルの分割
FYI: https://stackoverflow.com/questions/48749443/fish-shell-import-config-into-main-config

### plugin

```
# plugin manager install
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

# z
fisher add z

# bd
fisher add 0rax/fish-bd

fisher add oh-my-fish/plugin-peco

fish_config
```