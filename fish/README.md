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
% cp -rf ./fish/config ~/.config/fish/conf.d

# plugin file copy
% cp -f ./fish/plugin/fishfile ~/.config/fish/fishfile
```

設定ファイルの分割
FYI: https://stackoverflow.com/questions/48749443/fish-shell-import-config-into-main-config

### plugin

[fisher](https://github.com/jorgebucaran/fisher)を使う

```
# plugin manager install
# fishfile & functions/ が生まれる
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
```

### おすすめプラグイン

```
# z
fisher add z

# bd
fisher add 0rax/fish-bd

# 履歴検索にpecoを使う
# 注: peco本体が必要
fisher add oh-my-fish/plugin-peco
```