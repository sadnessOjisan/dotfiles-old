call plug#begin()
" カラーテーマ
Plug 't1mxg0d/vim-lucario'
" JSのシンタックス集
Plug 'othree/yajs.vim' " TODO: これが必要な理由を調べる
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" vimのヘッダ(Nerdtreeで開いた時にファイル名を上に出すためだけに入れる)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" tsxのシンタックスハイライト
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" wakatime
Plug 'wakatime/vim-wakatime'
" 括弧
Plug 'jiangmiao/auto-pairs'
call plug#end()