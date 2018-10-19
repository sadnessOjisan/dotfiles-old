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

#### Dein
installは[ここ](https://qiita.com/sugamondo/items/fcaf210ca86d65bcaca8)と[ここ](https://qiita.com/delphinus/items/00ff2c0ba972c6e41542)を参考.

deinのルートディレクトリを作成
```zsh
$ cd ~

$ mkdir .vim/dein
```

deinのルートディレクトリにdeinをインストール
プラグインの実態はreposにある. 
```zsh
$ cd ~/.vim/dein

$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

$ sh installer.sh ./

$ ls
installer.sh	repos
```

設定ファイルであるtomlを配置するディレクトリを用意し、dotfilesからtomlを配置する
```zsh
$ mkdir ~/.vim/dein/toml

$ mv {dein_lazy.toml,dein.toml} ~/.vim/dein/toml
```

vimを起動するとプラグインがインストールされる
```zsh
$ vim ~/.vimrc
```
