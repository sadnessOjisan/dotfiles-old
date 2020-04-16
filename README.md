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

### tmux

.tmux.conf が tmux の設定ファイル

```zsh
% \cp -rf ./tmux/.tmux.conf ~/.tmux.conf
```

この設定を変えた時は tmux を再度読み込む必要がある。再読み込みは prefix 後に`r`で読めるように設定している.

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

この時点で CoCNeoVim を入れる準備ができていないので一部はエラーが出る。

#### coc

コードの補完は [CoCNeoVim](https://github.com/neoclide/coc.nvim) で行う.

Q: もしかして事前に Node.js を入れておかないと動かないかもしれない.
`[coc.nvim] "node" is not executable, checkout https://nodejs.org/en/download/`

JS 周りのアドオンを install

```vim
:CocInstall coc-tsserver coc-eslint
```

Rust 周りのアドオンを install. 途中で rls(rust-language-server)を入れるか聞かれるので入れる.

```vim
:CocInstall coc-rls
```

#### wakatime

`:WakaTimeApiKey` で APIkey を入力できるようになる.

FYI: https://github.com/wakatime/vim-wakatime

### vim

起動速度の問題から Git のエディタは生の Vim を使う。そのため使いやすくするために少しだけ設定をする。

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

### iterm & tmux

#### status bar

iterm のステータスバーは標準設定でつけることができる。

`Preferences > Profiles > Session > Status bar enabled > Configure Status Bar`

FYI: https://qiita.com/delphinus/items/1748937aefeb241bdcee

#### dev icons

[nerd-fonts](https://github.com/ryanoasis/nerd-fonts)が必要なので入れる. (入れないと文字化けする)

FYI: https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts

```zsh
% brew tap homebrew/cask-fonts

% brew cask install font-hack-nerd-font
```

iterm で font を Hack Nerd Font にする

**この作業をしないと, NeoVim でのアイコンや、iterm でのアイコン（tmux でのフッター）が文字化けする**

### テーマ

./iterm に lucario などのテーマを入れている. iterm の preference の color からテーマ読み込みでそのファイルを指定すると設定される。

また text のところで font を Hack Nerd Font に指定すると powerline 系のフォントが設定される（事前に font-hack-nerd-font をインストールしておく必要あり）

## cheat sheet

### prezto git alias

https://www.shigemk2.com/entry/prezto_git_alias

### Vim の操作

#### NerdTree

他の画面に移動する Ctrl+w の後に hjkl

垂直開き s

水平開き i

#### tmux

ctrl + v で prefix

|で垂直、-で水平分割

## memo
