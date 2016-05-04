set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'Vundle.vim'
Plugin 'vim-elixir'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'Enhanced-Javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-haml'
Bundle 'less.vim'
Bundle 'mxw/vim-jsx'
Bundle 'elm.vim'

call vundle#end()
filetype plugin indent on

" Configuration file for vim
set encoding=utf-8
set noswapfile
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2
set laststatus=2
set nofoldenable
set wrap!
set guifont=Inconsolata\ for\ Powerline:h14
set number

set t_Co=256
colorscheme molokai
let g:molokai_original = 1
syntax on

"let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup
au BufRead,BufNewFile *.hamlc set ft=haml

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/elm.vim

"ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_map = '<c-p>'


"Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

"Show registerj
nnoremap <silent> <leader>r :reg<CR>

"Save al buffers on loss of focus
au FocusLost * silent! :wa

"Quick yanking to the end of the line
nmap Y y$
