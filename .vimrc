" Configuration file for vim
set modelines=0   " CVE-2007-2438
set ruler
set encoding=utf-8
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible  " Use Vim defaults instead of 100% vi compatibility
set backspace=2   " more powerful backspacing
set noswapfile 
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set laststatus=2 
set nofoldenable
set wrap!
set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h14 

set t_Co=256
colo molokai
syntax on
 
:set number

let g:Powerline_symbols = 'fancy'

 
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup
au BufRead,BufNewFile *.hamlc set ft=haml

filetype off 
set runtimepath^=~/.vim/bundle/ctrlp.vim

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/vim-powerline'

Bundle 'tomtom/checksyntax_vim'
Bundle 'Enhanced-Javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'less.vim'
Bundle 'jQuery'
Bundle 'digitaltoad/vim-jade'
Bundle 'guileen/vim-node'

filetype plugin indent on

