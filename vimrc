" Luke's personal vim file. Source using :so PATH/TO/DIR/vimrc

" Load Pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

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

" 2-space tabs for JS / HTML because iunno
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

" Python 3 mode
let g:pymode_python = 'python3'

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
set guifont=Monospace\ 8
colorscheme desert

" Ctrl-T for new tab because I'm too lazy to change
map <C-T> :tabnew<Return>

" Ctrl-P plugin stuff
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|node_modules$\|dist$\|bower_components$\|deps$'}

" vim-JSX plugin stuff
let g:jsx_ext_required = 0
