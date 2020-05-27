call plug#begin()
" カラーテーマ
Plug 't1mxg0d/vim-lucario'
" JSのシンタックス集
Plug 'othree/yajs.vim' " TODO: これが必要な理由を調べる
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" tsxのシンタックスハイライト
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" wakatime
Plug 'wakatime/vim-wakatime'
" 括弧
Plug 'jiangmiao/auto-pairs'
call plug#end()