### zsh

設定置き場を作る

```zsh
% mkdir -p ~/.zsh/settings

# 設定を追加したらこれを実行する(.zshrcに書いた関数が読み取ってくれる.)
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
% \cp -f ./zsh/.zshrc ~/.zshrc

% \cp -f ./zsh/.zshenv ~/.zshenv

% \cp -f ./zsh/.zpreztorc ~/.zpreztorc
```

ここで git commit したら nano に変えられてしまうかもしれないので修正

```zsh
% git config --global core.editor 'vim -c "set fenc=utf-8"'
```
