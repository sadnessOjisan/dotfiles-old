# dotfiles

おじさんの dotfiles です.

## How To Use

### iterm

terminal は iterm を使う

設定ファイルを import するといい

行った設定は,

- 上にステータスバーを出す

### zsh

設定置き場を作る

```
mkdir -p ~/.zsh/settings

cp -r ./zsh/settings/ ~/.zsh/
```

#### prezto を install

```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

```
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

#### 設定書き換え

設定をコピー

```
cp ./zsh/.zshrc ~/.zshrc

cp ./zsh/.zshenv ~/.zshenv

cp ./zsh/.zpreztorc ~/.zpreztorc
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

#### code コマンド

1. Command + Shift + P でコマンドパレット開く。
2. Shell って検索
3. インストール

https://qiita.com/naru0504/items/c2ed8869ffbf7682cf5c

設定ファイルを書く

↓

シンボリックリンクで, `~/Library/Application\ Support/Code/User/` 配下に入れる.

#### 設定

`settings.json` を書く

`~/Library/Application\ Support/Code/User/settings.json` を消す

手元の `settings.json` で `~/Library/Application\ Support/Code/User/settings.json` にシンボリックリンクを貼る

```
ln -s ./vscode/settings.json ~/Library/Application Support/Code/User/settings.json
```

```
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

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

#### go の設定

https://octetz.com/docs/2019/2019-04-24-vim-as-a-go-ide/

Copy the following to tell vim-go to not map gd as its shortcut for go to definition.

```
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
```

vim-go の機能をつかう & coc と衝突するところは設定をいじる
