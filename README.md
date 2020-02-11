# dotfiles

おじさんの dotfiles です.

## How To Use

### zsh

設定置き場を作る

```
mkdir ~/.zsh/settings

cp -r ./zsh/settings/ ~/.zsh/
```

#### prezto を install

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

設定ファイルの symlink を作成（必要？）

この時、.zshrc が既に存在する場合 symlink が作成できないので、その場合は下記をファイルトップに追記する事で対応。
(http://senta.me/blog/2015-09-25/tuning-zsh-uptime-part2/)

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#### 設定書き換え

設定をコピー

```
cp ./zsh/.zshrc ~/.zshrc

cp ./zsh/.zshenv ~/.zshenv
```

### neovim

```
brew install neovim
```

neovim client をいれる（要 python3）

```
pip install neovim
```

設定ファイル

```
mkdir -p ~/.config/nvim

cp -r ./neovim/settings/ ~/.config/nvim/settings

cp ./neovim/init.vim ~/.config/nvim
```

プラグイン適用

```
vim +PlugInstall
```

#### coc

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

:PlugInstall

### zsh

#### module

fasd はいれない

git はいれる

archive 入れる

history-substring-module 入れる

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
$ sh ./vscode/install_extensions.sh
```

#### キーバーインド

TBD

## 解説

起動時の prezto 読み込み

これが zshrc で読まれると prezto が立ち上がる

```
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
```

設定ファイルにシンボリックリンクを貼りまくる。

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

.zlogin =>
.zlogout=>
.zpreztorc=>
.zprofile=>
.zshenv=>
.zshrc=>
