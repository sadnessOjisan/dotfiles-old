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

### NodeJS

nvm or volta

#### nvm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

#### volta

```sh
# install Volta
curl https://get.volta.sh | bash

# install Node
volta install node
```

### OCaml

#### opamのinstall

[公式](https://opam.ocaml.org/doc/Install.html)の手順

```sh
brew install gpatch
brew install opam
```

gpatch が必要なのは、opam uses gnu-specific options.とのこと。
gpatch 自体は、[GNU patch](https://savannah.gnu.org/projects/patch/)によると、

> Patch takes a patch file containing a difference listing produced by the diff program and applies those differences to one or more original files, producing patched versions

ともあれopamを実行できる

```sh
> opam
usage: opam [--version]
            [--help]
            <command> [<args>]

The most commonly used opam commands are:
    init         Initialize opam state, or set init options.
    list         Display the list of available packages.
    show         Display information about specific packages.
    install      Install a list of packages.
    remove       Remove a list of packages.
    update       Update the list of available packages.
    upgrade      Upgrade the installed package to latest version.
    config       Display configuration options for packages.
    repository   Manage opam repositories.
    switch       Manage multiple installation prefixes.
    pin          Pin a given package to a specific version or source.
    admin        Tools for repository administrators

See 'opam help <command>' for more information on a specific command.
```

ちなみに環境を作るといろいろ聞かれるのでちゃんと目を通そう。

```
❯ opam init
[NOTE] Will configure from built-in defaults.
Checking for available remotes: rsync and local, git.
  - you won't be able to use mercurial repositories unless you install the hg command on your
    system.
  - you won't be able to use darcs repositories unless you install the darcs command on your
    system.


<><> Fetching repository information ><><><><><><><><><><><><><><><><><><><>  🐫 
Processing  1/1: [default: http]
[default] Initialised

<><> Required setup - please read <><><><><><><><><><><><><><><><><><><><><>  🐫 

  In normal operation, opam only alters files within ~/.opam.

  However, to best integrate with your system, some environment variables
  should be set. If you allow it to, this initialisation step will update
  your fish configuration by adding the following line to ~/.config/fish/config.fish:

    source /Users/ojisan/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

  Otherwise, every time you want to access your opam installation, you will
  need to run:

    eval $(opam env)

  You can always re-run this setup with 'opam init' later.

Do you want opam to modify ~/.config/fish/config.fish? [N/y/f]
(default is 'no', use 'f' to choose a different file) A hook can be added to opam's init scripts to ensure that the shell remains in sync with the opam
environment when they are loaded. Set that up? [y/N] y

<><> Creating initial switch (ocaml-base-compiler) ><><><><><><><><><><><><>  🐫 

<><> Gathering sources ><><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
[ocaml-base-compiler.4.10.0] downloaded from cache at https://opam.ocaml.org/cache

<><> Processing actions <><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
∗ installed base-bigarray.base
∗ installed base-threads.base
∗ installed base-unix.base
```

#### ocaml-lsp

```sh
$ opam pin add ocaml-lsp-server https://github.com/ocaml/ocaml-lsp.git
> ❯ opam pin add ocaml-lsp-server https://github.com/ocaml/ocaml-lsp.git
Package ocaml-lsp-server does not exist, create as a NEW package? [Y/n] Y
[ocaml-lsp-server.~dev] synchronised from git+https://github.com/ocaml/ocaml-lsp.git
ocaml-lsp-server is now pinned to git+https://github.com/ocaml/ocaml-lsp.git (version ~dev)

The following actions will be performed:
  ∗ install dune                2.6.2    [required by ocaml-lsp-server]
  ∗ install conf-m4             1        [required by ocamlfind]
  ∗ install stdlib-shims        0.1.0    [required by ocaml-lsp-server]
  ∗ install menhirSdk           20200624 [required by menhir]
  ∗ install menhirLib           20200624 [required by menhir]
  ∗ install easy-format         1.3.2    [required by yojson]
  ∗ install dune-build-info     2.6.2    [required by ocaml-lsp-server]
  ∗ install cppo                1.6.6    [required by yojson]
  ∗ install ocamlfind           1.8.1    [required by ocaml-lsp-server]
  ∗ install menhir              20200624 [required by ocaml-lsp-server]
  ∗ install biniou              1.2.1    [required by yojson]
  ∗ install yojson              1.7.0    [required by ocaml-lsp-server]
  ∗ install ppx_yojson_conv_lib v0.14.0  [required by ocaml-lsp-server]
  ∗ install ocaml-lsp-server    ~dev*
===== ∗ 14 =====
Do you want to continue? [Y/n] Y

<><> Gathering sources ><><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
[biniou.1.2.1] downloaded from cache at https://opam.ocaml.org/cache
[cppo.1.6.6] downloaded from cache at https://opam.ocaml.org/cache
[easy-format.1.3.2] downloaded from cache at https://opam.ocaml.org/cache
[dune.2.6.2] downloaded from cache at https://opam.ocaml.org/cache
[menhir.20200624] downloaded from cache at https://opam.ocaml.org/cache
[menhirLib.20200624] found in cache
[menhirSdk.20200624] found in cache
[dune-build-info.2.6.2] downloaded from cache at https://opam.ocaml.org/cache
[ocamlfind.1.8.1] downloaded from cache at https://opam.ocaml.org/cache
[ppx_yojson_conv_lib.v0.14.0] downloaded from cache at https://opam.ocaml.org/cache
[stdlib-shims.0.1.0] downloaded from cache at https://opam.ocaml.org/cache
[yojson.1.7.0] downloaded from cache at https://opam.ocaml.org/cache
[ocaml-lsp-server.~dev] synchronised from git+https://github.com/ocaml/ocaml-lsp.git

<><> Processing actions <><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
∗ installed conf-m4.1
∗ installed ocamlfind.1.8.1
∗ installed dune.2.6.2
∗ installed cppo.1.6.6
∗ installed dune-build-info.2.6.2
∗ installed easy-format.1.3.2
∗ installed menhirSdk.20200624
∗ installed stdlib-shims.0.1.0
∗ installed menhirLib.20200624
∗ installed biniou.1.2.1
∗ installed yojson.1.7.0
∗ installed ppx_yojson_conv_lib.v0.14.0
∗ installed menhir.20200624
∗ installed ocaml-lsp-server.~dev
Done.
# Run eval (opam env) to update the current shell environment
```

```
❯ opam install merlin
The following actions will be performed:
  ∗ install merlin 3.3.6

<><> Gathering sources ><><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
[merlin.3.3.6] downloaded from cache at https://opam.ocaml.org/cache

<><> Processing actions <><><><><><><><><><><><><><><><><><><><><><><><><><>  🐫 
∗ installed merlin.3.3.6
Done.

<><> merlin.3.3.6 installed successfully ><><><><><><><><><><><><><><><><><>  🐫 
=> merlin installed.

   Quick setup for VIM
   -------------------
   Append this to your .vimrc to add merlin to vim's runtime-path:
     let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

   Also run the following line in vim to index the documentation:
     :execute "helptags " . g:opamshare . "/merlin/vim/doc"

   Quick setup for EMACS
   -------------------
   Add opam emacs directory to your load-path by appending this to your .emacs:
     (let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
      (when (and opam-share (file-directory-p opam-share))
       ;; Register Merlin
       (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
       (autoload 'merlin-mode "merlin" nil t nil)
       ;; Automatically start it in OCaml buffers
       (add-hook 'tuareg-mode-hook 'merlin-mode t)
       (add-hook 'caml-mode-hook 'merlin-mode t)
       ;; Use opam switch to lookup ocamlmerlin binary
       (setq merlin-command 'opam)))

   Take a look at https://github.com/ocaml/merlin for more information

   Quick setup with opam-user-setup
   --------------------------------

   Opam-user-setup support Merlin.

     $ opam user-setup install

   should take care of basic setup.
   See https://github.com/OCamlPro/opam-user-setup
```


#### marlin

（本当に必要？）

```
opam install merlin
```

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

```sh
$ brew install tig
```

FYI: https://github.com/jonas/tig/blob/master/INSTALL.adoc

### peco

brew から入れられる

FYI: https://github.com/peco/peco

### hub

brew から入れられる

FYI: https://hub.github.com/
