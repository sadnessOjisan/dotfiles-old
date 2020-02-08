# dotfiles

おじさんの dotfiles です.

## How To Use

### zsh

設定置き場を作る

```
mkdir ~/.zsh/settings

cp -r ./zsh/settings/ ~/.zsh/settings
```

設定をコピー

```
cp ./zsh/.zshrc ~/.zshrc
```

#### prezto を install

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

### vim

vim を最新にする

```
brew install vim --with-override-system-vi
```

設定置き場を作る

```
mkdir ~/.vim/settings

cp -r ./vim/settings/ ~/.vim/settings
```

設定をコピー

```
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

## how to config

### vim

plugin の追加

```
Plugin 'VundleVim/Vundle.vim'
```

反映

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
