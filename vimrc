" Luke's personal vim file. Source using :so PATH/TO/DIR/vimrc
execute pathogen#infect()

set nocompatible
filetype plugin indent on
set nobackup
set encoding=utf-8
set ruler
set backspace=indent,eol,start
set whichwrap=<,>,h,l
syntax on

" Set ClojureScript files to Clojure filetype
au BufNewFile,BufRead *.cljs set filetype=clojure

" 4-space tabs. Tabs are expanded to spaces
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Get tab completion for vim commands
set wildmenu
set wildmode=list:longest

" Use normal regex matching for searches
nnoremap / /\v
vnoremap / /\v
nnoremap :s/ :s/\v
vnoremap :s/ :s/\v
nnoremap :%s/ :%s/\v
vnoremap :%s/ :%s/\v

" GUI options
set guioptions-=T
set guioptions+=e
set guifont=Consolas:h8:cANSI
colorscheme desert
