dotfiles
====

おじさんのdotfilesです.

## How To Use
### zsh
zshrcの読込先を指定
```
function loadlib() {
        lib=${1:?"You have to specify a library file"}
        if [ -f "$lib" ];then #ファイルの存在を確認
                . "$lib"
        fi
}

loadlib /path/to/zsh_setting
loadlib /path/to/zsh_env
```

もしくは
```
mv ./.zshrc ~/
```

#### prezto
詳しくはこちら
https://github.com/sorin-ionescu/prezto

プラグイン拡充はこちら
https://dev.classmethod.jp/tool/zsh-prezto/

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

zshrcに次を追加
```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

```
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
```

### vim
vimを最新にする
```
brew install vim --with-override-system-vi
```

ホームに.vimrcを作成
```
$ cd ~/
$ touch .vimrc
```

.vimrcを編集
```
if filereadable(expand('~/path/to/.vimrc'))
  source ~/path/to/.vimrc
endif
```

vimrcの読み込み
1. vimを起動
2. vimの中から`:source .vimrc`

### VSCode
設定ファイルを書く

↓

シンボリックリンクで, `~/Library/Application\ Support/Code/User/` 配下に入れる. 

#### 設定
`settings.json` を書く

`~/Library/Application\ Support/Code/User/settings.json` を消す

手元の `settings.json` で `~/Library/Application\ Support/Code/User/settings.json` にシンボリックリンクを貼る

#### プラグイン

```
# dump
$ code --list-extensions > extensions

# install
$ sh install_extensions.sh
```

#### キーバーインド


#### 参考
* [Visual Studio Codeで設定ファイル・キーバインディング・拡張機能を共有する](https://qiita.com/mottox2/items/581869563ce5f427b5f6)
* [type can be used by only '.ts' files](https://qiita.com/akameco/items/3e5402357ca32fd2dcaa)



