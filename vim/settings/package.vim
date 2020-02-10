set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!
Plugin 'othree/yajs.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" coc install
call coc#util#install()