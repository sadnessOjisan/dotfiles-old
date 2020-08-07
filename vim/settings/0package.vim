echo "load package.vim"

call plug#begin()
" LSP
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ryanolsonx/vim-lsp-typescript'
Plug 'mattn/vim-lsp-settings'
" Rust
Plug 'rust-lang/rust.vim'
" wakatime
Plug 'wakatime/vim-wakatime'
" 括弧
Plug 'jiangmiao/auto-pairs'
call plug#end()