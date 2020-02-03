dotfiles
====

おじさんのdotfilesです.

## How To Use

### zsh

```
cp .zshrc ~/.zshrc
```

### tmux

```

cp .tmux.conf ~/.tmux.conf

cp .tmux.session.conf ~/.tmux.session.conf
```

### vim

vimを最新にする
```
brew install vim --with-override-system-vi
```

```
mv .vimrc ~/.vimrc
```

## setting log

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

#### vim plugin

vundleを利用

##### plugin 格納

mkdir -p ~/.vim/bundle

##### vundle pluginをDL & 配置

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

##### vimの設定ファイルに次を追加

```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
```

##### vimの反映

vim +PluginInstall +qall

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

## tmux

自動起動

### 画面分割

ctrl b + %
