" hiddenをセットしていなければTextEditが失敗するので設定
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" メッセージを見やすくする
set cmdheight=2

" defaultの4000だとlintの体験が悪くなるらしい
" FYI: https://github.com/neoclide/coc.nvim/wiki/F.A.Q#linting-is-slow
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" signcolumnを表示させておく
set signcolumn=yes

" Tabが他のプラグインに割り当てられてないか ':verbose imap <tab>' で確認しておいた方が良い
" 補完を開いているとき、Tabで下の項目を選択する
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" 補完を開いているとき、Shit+Tabで上の項目を選択する
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" <cr>（エンター）で補完を確定させる
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" 補完などを調べるコマンドへのキーマップ
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" normalモード時、Kでその下にあるwordのdocをpreview画面に出す
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" autocmdをグループ化(パフォーマンス改善)
augroup mygroup
  autocmd!
  " filetype指定時にフォーマッターを設定
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" `:Format`でフォーマットする
command! -nargs=0 Format :call CocAction('format')

" `:Fold`でコードブロックを折りたたむ(insertで展開できる)
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" `:OR`で一括importする
" TODO: 使いところわからない&バグがありそうだから後で消す
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" CocList(Some basic list sources for coc.nvim)の設定
" diagnostic-languageserverの情報をリスト化
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" coc-extensionsをリスト化
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>

" `space + p`で coc list を再開
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
