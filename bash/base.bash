# bash上にbranchを表示させるために必要. OSによって場所は違うので注意
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# add/commit の状況を +/* で示す
# FYI: http://tm.root-n.com/unix:command:git:bash_prompt
GIT_PS1_SHOWDIRTYSTATE=true

# FYI: http://archive.linux.or.jp/JF/JFdocs/Bash-Prompt-HOWTO-5.html
export PS1="\[\033[33m\]\w\[\033[36m\]\$(__git_ps1)\[\033[00m\]\n> "