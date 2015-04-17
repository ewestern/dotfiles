if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()
filetype plugin indent on
NeoBundleCheck

syntax enable
set background=dark
let g:solarized_termcolors=256
set number
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile
set laststatus=2
set statusline+=%F
execute pathogen#infect()
NeoBundle 'tpope/vim-fugitive'
