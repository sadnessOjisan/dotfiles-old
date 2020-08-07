echo "load keymap.vim"

" ctrl+eでnerdtreeを実行
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" tagjump
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>


" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

" vi互換の動作を無効にするコマンド
if &compatible
  set nocompatible
endif

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"