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
% mkdir -p ~/.config/nvim

% cp -rf ./neovim/settings/ ~/.config/nvim/settings

% cp -f ./neovim/init.vim ~/.config/nvim
```

## plugin 

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

### coc

コードの補完は [CoCNeoVim](https://github.com/neoclide/coc.nvim) で行う.

事前に Node.js を入れておかないと動かないので入れておこう. (公式にも書かれている)

### JSの設定

```vim
# 補完の設定
:CocInstall coc-tsserver
```

### Rustの設定

Rust 周りのアドオンを install. 途中で rls(rust-language-server)を入れるか聞かれるので入れる.

```vim
:CocInstall coc-rls
```

### Cの設定

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

nerdtreeやめる。標準のnetwを使う。

FYI: https://pc.oreda.net/software/filer/netrw

## 疑問

* LSPのアップデートってどうするんだろう？