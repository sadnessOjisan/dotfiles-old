call plug#begin()

" !! write plugins here !!
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc install
call coc#util#install()