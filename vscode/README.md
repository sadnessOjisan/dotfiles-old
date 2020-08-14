
（設定の同期はいったん諦めている）

`settings.json` を書く.

`~/Library/Application\ Support/Code/User/settings.json` に `settings.json`をコピー

手元の `settings.json` で `~/Library/Application\ Support/Code/User/settings.json` にシンボリックリンクを貼る

```sh
% ln -s ./vscode/settings.json ~/Library/Application Support/Code/User/settings.json
```

```sh
% \cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

#### プラグイン

```sh
# dump
% code --list-extensions > extensions

# install
% sh ./vscode/install_extensions.sh
```

#### code コマンド

1. Command + Shift + P でコマンドパレット開く。
2. Shell って検索
3. インストール

https://qiita.com/naru0504/items/c2ed8869ffbf7682cf5c


