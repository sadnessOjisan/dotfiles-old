# Mac のセットアップログ

## PC 自体の設定

### ライブ入力の OFF

### Magicpad のタップでクリックを ON

### マウスのスピード

### キーのリピート

一番早くしておく

### タッチバーの予測変換

Touch Bar 付き Mac の場合、OFF にしといた方が良い.
「Touch Bar に丹生録候補を表示」ってやつ

FYI: https://dragon-taro.com/college/post-466

## アプリケーションの構築

- Chrome
- Slack
- Notion
- Discord
- [iterm](https://www.iterm2.com/)
- Docker
  - FYI: https://hub.docker.com/editions/community/docker-ce-desktop-mac/

## 開発環境構築

### Git

```
git config --global user.name sadness_ojisan
git config --global user.email sadness.ojisan@gmail.com
```

を忘れずに.

neovimでcommitする

```
$ git config --global core.editor nvim
```

### tmux

brew から入れられる

FYI: https://github.com/tmux/tmux

### brew

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

FYI: https://brew.sh/index_ja

### nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

### brew install

### Rust

rust 自体のバージョン管理は公式でサポートされている `rustupc` が使える.

`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

FYI: https://doc.rust-jp.rs/the-rust-programming-language-ja/1.6/book/getting-started.html

### Go

#### gvm

insatall はバイナリで

### Terrafrom

#### tfenv

`brew install tfenv`

FYI: https://github.com/tfutils/tfenv

#### AWS CLI

```
brew install aws-cli
```

## editor 周り

[こっち](./readme.md)

### tig

brew から入れられる

FYI: https://github.com/jonas/tig/blob/master/INSTALL.adoc

### peco

brew から入れられる

FYI: https://github.com/peco/peco

### hub

brew から入れられる

FYI: https://hub.github.com/
