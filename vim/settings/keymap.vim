" ctrl+eでnerdtreeを実行
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" tagjump
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>

" 分割windowの移動
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

if &compatible
  set nocompatible
endif