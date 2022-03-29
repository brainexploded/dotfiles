set expandtab
set shiftwidth=4
set relativenumber
set nu
set nowrap
set autoindent
set smartindent
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set path+=**
set scrolloff=8
set signcolumn=yes
set completeopt=menuone,noinsert,noselect
set wildmenu
set wildignore+=**/node_modules/****/vendor/**
set hidden
set number
set ts=4 softtabstop=4
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set nocompatible

set splitbelow splitright

syntax on
filetype plugin on

let g:netrw_liststyle=3 "tree view
let g:netrw_winsize=60
let g:netrw_keepdir = 0

command! MakeTags !ctags -R .

call plug#begin('~/.vim/plugged')

Plug  'morhetz/gruvbox' 
Plug  'tpope/vim-fugitive' 
Plug  'vim-airline/vim-airline' 
Plug  'airblade/vim-gitgutter' 
Plug  'jiangmiao/auto-pairs'
Plug  'tpope/vim-surround'
Plug  'arnaud-lb/vim-php-namespace'
Plug  'ctrlpvim/ctrlp.vim'

call plug#end()

colorscheme gruvbox
set background=dark

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
