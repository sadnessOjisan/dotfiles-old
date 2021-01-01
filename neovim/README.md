## install

```
$ brew install neovim
```

## setting

<!--
この設定は不要になりました

neovim client をいれる（要 python3） <= 今は不要かも？

```zsh
% pip3 install neovim
``` -->

設定ファイル

```zsh
mkdir -p ~/.config/nvim

cp -rf ./neovim/settings/ ~/.config/nvim/settings

cp -f ./neovim/init.vim ~/.config/nvim
```

## plugin

plugin を [vim-plug](https://github.com/junegunn/vim-plug)で管理する

```zsh
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

設定ファイルにあるプラグインを vim-plug 経由で Vim に適用する

```zsh
vim +PlugInstall
```

もしくは vim を立ち上げて

```vim
:PlugInstall
```

この時点で CoCNeoVim を入れる準備ができていないので一部はエラーが出る。

### coc

コードの補完は [CoCNeoVim](https://github.com/neoclide/coc.nvim) で行う.

事前に Node.js を入れておかないと動かないので入れておこう. (公式にも書かれている)

### JS の設定

```vim
# 補完の設定
:CocInstall coc-tsserver
```

### Rust の設定

Rust 周りのアドオンを install. 途中で rls(rust-language-server)を入れるか聞かれるので入れる.

```vim
:CocInstall coc-rls
```

#### 依存

coc-rls は Rust の Language Server [rls](https://github.com/rust-lang/rls)に依存し、これは [rustup](https://rustup.rs/)に依存している(install 方法が依存するだけなので自分で必要な資材を持ってこれるなら rustup は不要(かも))。

[rustup](https://rustup.rs/) は Rust の標準のインストーラなので、入っているとは思うが入っていないなら先に入れておこう。

```sh
% curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

**ただし fish を使っていると `.profile` は読まれないので、別途環境変数をセットする必要がある。**
(実際には `source ~/.cargo/env` を実行するだけで済む)

rustup が入っていると coc.nvim 起動時に `rls rust-analysis rust-src` が install される

```sh
# 自動で入るので手動実行は不要だが、これが実行されている.
$ rustup component add rls rust-analysis rust-src
```

これで設定は完了しそうに見えるが、実際には cargo で管理したフォルダを要求される。
cargo.toml がない prj だと完全は補完はできない(使ってる外部モジュールわからないし当たり前のことだとは思う)

### C の設定

C 周りを install

c の lsp である clangd を入れる。これは llvm に付随してる。

```
% brew install llvm
To use the bundled libc++ please add the following LDFLAGS:
  LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

llvm is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have llvm first in your PATH run:
  echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc

For compilers to find llvm you may need to set:
  export LDFLAGS="-L/usr/local/opt/llvm/lib"
  export CPPFLAGS="-I/usr/local/opt/llvm/include"
```

#### wakatime

`:WakaTimeApiKey` で APIkey を入力できるようになる.

FYI: https://github.com/wakatime/vim-wakatime

### 使い方

#### filer

nerdtree やめる。標準の netw を使う。

FYI: https://pc.oreda.net/software/filer/netrw

## cheatsheat

### 画面分割

<c-w>s 縦割り

<c-w>v 横割り

<c-w>w 移動

<c-w>c 閉じる

### fern

ファイルを開くときはエンター

階層を開けるときは t

### 検索

```
:vim word */**
```

で全文検索できる。
