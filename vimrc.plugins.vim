
set nocompatible               " be iMproved
filetype off                   " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

Bundle 'The-NERD-tree'
autocmd vimenter * if !argc() | NERDTree | endif
" see https://github.com/kien/ctrlp.vim
" see http://kien.github.io/ctrlp.vim/
Bundle 'kien/ctrlp.vim'
" Create a file called root.dir in the root of your project - to make CtrlP work really nicely

Bundle 'SuperTab'
" Bundle 'vim-coffee-script'
" Bundle 'ack.vim'
" Bundle 'tpope/vim-rails'
" Bundle 'vim-bundler'
" Bundle 'tpope/vim-fugitive'
" Bundle 'Tagbar'
" Bundle 'haml.zip'
Bundle 'endwise.vim'
" Bundle 'IndexedSearch'
" Bundle 'bufexplorer.zip'
" Bundle 'Gundo'
Bundle 'vim-scripts/tComment'
" Bundle 'chrismetcalf/vim-yankring'
" git update-server-info
" Bundle 'scrooloose/syntastic'


""  tmux
" Bundle 'jgdavey/tslime.vim'
" Bundle 'jgdavey/vim-turbux'

" colorschemes
" see https://code.google.com/p/vimcolorschemetest/
" http://bytefluent.com/vivify/
Bundle 'rking/vim-detailed'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'bf4/vim-wombat256i'
Bundle 'molokai'
Bundle 'railscasts'
" grb
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
" Bundle 'tpope/vim-commentary'
" Bundle 'tpope/vim-eunuch'
" Bundle 'tsaleh/vim-matchit'
filetype plugin indent on     " required!
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
