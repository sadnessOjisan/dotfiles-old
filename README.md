# dotfiles

おじさんの dotfiles です.

## How To Use

### zsh

```
cp ./zsh/.zshrc ~/.zshrc
```

### vim

vim を最新にする

```
brew install vim --with-override-system-vi
```

```
mkdir ~/.vim/settings

cp -r ./vim/settings/ ~/.vim/settings

cp ./vim/.vimrc ~/.vimrc
```

#### vundle を install

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

設定を反映

```
vim +PluginInstall +qall
```

## setting log

#### vim plugin

vundle を利用

##### plugin 格納

mkdir -p ~/.vim/bundle

##### vundle plugin を DL & 配置

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

##### vim の設定ファイルに次を追加

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

##### vim の反映

```
vim +PluginInstall +qall
```

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

TBD
