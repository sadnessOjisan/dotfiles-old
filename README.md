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

terminal は iterm + tmux を使う.
iterm の中から tmux を使う. (iterm は消してもまあ動く)

### iterm

設定ファイルを import するといい

行った設定は,

- 上にステータスバーを出す
- coloring

### [tmux](https://github.com/tmux/tmux)

Mac は brew から install できる

```zsh
% brew install tmux
```

.tmux.conf が tmux の設定ファイル

```zsh
% \cp -rf ./tmux/.tmux.conf ~/.tmux.conf
```

### zsh

設定置き場を作る

```zsh
% mkdir -p ~/.zsh/settings

% \cp -rf ./zsh/settings/ ~/.zsh/
```

#### prezto を install

```zsh
% git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

```zsh
# zshでglob記法が使えるように設定
% setopt EXTENDED_GLOB

# zshrcのシンボリックリンクを貼る
% for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
```

#### 設定書き換え

設定をコピー

```zsh
% cp ./zsh/.zshrc ~/.zshrc

% cp ./zsh/.zshenv ~/.zshenv

% cp ./zsh/.zpreztorc ~/.zpreztorc
```

ここで git commit したら nano に変えられてしまうかもしれないので修正

```zsh
% git config --global core.editor 'vim -c "set fenc=utf-8"'
```

### neovim

```zsh
% brew install neovim
```

neovim client をいれる（要 python3） <= 今は不要かも？

```zsh
% pip3 install neovim
```

設定ファイル

```zsh
% mkdir -p ~/.config/nvim

% \cp -rf ./neovim/settings/ ~/.config/nvim/settings

% \cp -f ./neovim/init.vim ~/.config/nvim
```

plugin を [vim-plug](https://github.com/junegunn/vim-plug)で管理する

```zsh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

設定ファイルにあるプラグインを vim-plug 経由で Vim に適用する

```zsh
% vim +PlugInstall
```

もしくは vim を立ち上げて

```vim
:PlugInstall
```

この時点で CoCNeoVimを入れる準備ができていないので一部はエラーが出る。

#### coc

コードの補完は [CoCNeoVim](https://github.com/neoclide/coc.nvim) で行う.

Q: もしかして事前にNode.jsを入れておかないと動かないかもしれない. 
`[coc.nvim] "node" is not executable, checkout https://nodejs.org/en/download/`

JS 周りのアドオンを install

```vim
:CocInstall coc-tsserver coc-eslint
```

Rust 周りのアドオンを install. 途中でrls(rust-language-server)を入れるか聞かれるので入れる. 

```vim
:CocInstall coc-rls
```
<!-- 
#### dev icons

[nerd-fonts](https://github.com/ryanoasis/nerd-fonts)が必要なので入れる. (入れないと文字化けする)

FYI: https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts

```zsh
% brew tap homebrew/cask-fonts

% brew cask install font-hack-nerd-font
```

iterm で font を Hack Nerd Font にする -->

### vim

起動速度の問題からGitのエディタは生のVimを使う。そのため使いやすくするために少しだけ設定をする。

設定をコピー

```
% \cp -f ./vim/.vimrc ~/.vimrc
```

## VSCode

（設定の同期はいったん諦めている）

`settings.json` を書く.

`~/Library/Application\ Support/Code/User/settings.json` に `settings.json`をコピー

手元の `settings.json` で `~/Library/Application\ Support/Code/User/settings.json` にシンボリックリンクを貼る

```zsh
% ln -s ./vscode/settings.json ~/Library/Application Support/Code/User/settings.json
```

```zsh
% \cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

#### プラグイン

```zsh
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

#### 設定ファイルの同期

TBD

## 解説

起動時の prezto 読み込み

これが zshrc で読まれると prezto が立ち上がる

```zsh
% if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
```

設定ファイルにシンボリックリンクを貼りまくる。

```zsh
% setopt EXTENDED_GLOB
% for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

## cheat sheet

### prezto git alias

https://www.shigemk2.com/entry/prezto_git_alias

### Vim の操作

#### NerdTree

他の画面に移動する Ctrl+w の後に hjkl

垂直開き s

水平開き i

## memo

Successfully built neovim pynvim greenlet
Installing collected packages: msgpack, greenlet, pynvim, neovim
Could not install packages due to an EnvironmentError: [Errno 13] Permission denied: '/Library/Python/3.7'
Consider using the `--user` option or check the permissions.


