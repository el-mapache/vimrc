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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif,*.m4v,*/log/*  

"let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme aurelia " ir_black aurelia - this is rc's
set t_Co=256
 
:set number

let g:Powerline_symbols = 'fancy'
" Airline configs
"let g:airline_powerline_fonts = 1
"set laststatus=2
 
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
"Bundle 'bling/vim-airline'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tomtom/checksyntax_vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Enhanced-Javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-surround'
Bundle 'less.vim'
Bundle 'jQuery'
Bundle 'digitaltoad/vim-jade'
Bundle 'guileen/vim-node'
Bundle 'jamestomasino/actionscript-vim-bundle'

filetype plugin indent on

""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set laststatus=0
    set numberwidth=10
    set foldcolumn=12
    set noruler
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set laststatus=2
    set numberwidth=4
    set foldcolumn=0
    set ruler
    execute 'colorscheme ' . g:colors_name
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>
