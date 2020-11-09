# dotfiles

おじさんの dotfiles です.

## zsh

[zsh](./zsh/README.md)

## bash

[bash](./bash/README.md)

## fish

[fish](./fish/README.md)

## neovim

[neovim](./neovim/README.md)

## VSCode

[vscode](./vscode/README.md)

## memo

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

### dev icons

[nerd-fonts](https://github.com/ryanoasis/nerd-fonts)が必要なので入れる. (入れないと文字化けする)

FYI: https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts

```zsh
% brew tap homebrew/cask-fonts

% brew cask install font-hack-nerd-font
```

iterm で font を Hack Nerd Font にする

**この作業をしないと, NeoVim でのアイコンや、iterm でのアイコン（tmux でのフッター）が文字化けする**
