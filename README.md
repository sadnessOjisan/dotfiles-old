# dotfiles

おじさんの dotfiles です.

# Support

## Vim

- Rust
- JS

### VSCode

- JS
- Go
- OCaml

## How To Use

### iterm

terminal は iterm を使う

設定ファイルを import するといい

行った設定は,

- 上にステータスバーを出す

### tmux

cp -r ./tmux/.tmux.conf ~/.tmux.conf

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

ここで git commit したら nano に変えられてしまうかもしれないので修正

```
git config --global core.editor 'vim -c "set fenc=utf-8"'
```

### neovim

```
brew install neovim
```

neovim client をいれる（要 python3）

```
pip3 install neovim
```

設定ファイル

```
mkdir -p ~/.config/nvim

cp -r ./neovim/settings/ ~/.config/nvim/settings

cp ./neovim/init.vim ~/.config/nvim
```

plugin magener install

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

プラグイン適用

```
vim +PlugInstall
```

#### coc

##### JS

```
:CocInstall coc-tsserver coc-eslint
```

##### Rust

```
:CocInstall coc-rls
```

もしかしたら下のコマンドが必要かも？
（rust.coc 入れたときに一緒に入るぽいではある）

```
$ rustup component add rls-preview --toolchain nightly
$ rustup component add rust-analysis --toolchain nightly
$ rustup component add rust-src --toolchain nightly
```

#### dev icons

font が必要なので入れる

```
brew tap homebrew/cask-fonts

brew cask install font-hack-nerd-font
```

iterm で font を Hack Nerd Font にする

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

#### airline font

```
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
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

### prezto git alias

https://www.shigemk2.com/entry/prezto_git_alias

### Vim の操作

#### NerdTree

他の画面に移動する Ctrl+w の後に hjkl

垂直開き s

水平開き i

## trouble shooting

### node がないと neovim coc 動かないかも
