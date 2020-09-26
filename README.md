# dotfiles

おじさんの dotfiles です.

## How To Use

terminal は iterm + tmux を使う.

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

[zsh](./zsh/README.md)

### bash

[bash](./bash/README.md)

### fish

[fish](./fish/README.md)

### vim

[vim](./vim/README.md)

### neovim

[neovim](./neovim/README.md)

## VSCode

[vscode](./vscode/README.md)

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

```zsh
alias g='git'
alias gb='git branch'
alias gbc='git checkout -b'
alias gc='git commit --verbose'
alias gia='git add'
alias gm='git merge'
alias gp='git push'
alias gfm='git pull'
```

### Vim の操作

#### NerdTree

他の画面に移動する Ctrl+w の後に hjkl

垂直開き => (Ctrl+w) + s

水平開き => (Ctrl+w) + i

閉じる => (Ctrl+w) + q

#### tmux

ctrl + v で prefix

prefix 後、|で垂直、-で水平分割

& ウインドウの破棄
