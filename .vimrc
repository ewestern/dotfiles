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
set cursorline
set hlsearch
set paste
set wildmenu

" CtrlP settings

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
"let g:ctrlp_open_multiple_files = '10t'
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile
set laststatus=2
set statusline+=%F
execute pathogen#infect()
NeoBundle 'tpope/vim-fugitive'
au BufRead,BufNewFile *.hsc set filetype=haskell
set smartindent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

