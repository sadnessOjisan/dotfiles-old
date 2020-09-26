" HACK: 一番最初に読み込む必要があるのでファイル名に0をつけている

call plug#begin()
" JSのシンタックス集
" Plug 'othree/yajs.vim' " TODO: これが必要な理由を調べる
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" tsxのシンタックスハイライト
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" wakatime
" Plug 'wakatime/vim-wakatime'
" 括弧
Plug 'jiangmiao/auto-pairs'
"fern の依存
Plug 'antoinemadec/FixCursorHold.nvim'
" fern ファイラ
Plug 'lambdalisue/fern.vim'
" float window
Plug 'voldikss/vim-floaterm'
call plug#end()