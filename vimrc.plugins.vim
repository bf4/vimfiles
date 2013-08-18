
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

Bundle 'thoughtbot/vim-rspec'
" Rspec.vim mappings
 map <Leader>t :call RunCurrentSpecFile()<CR>
 map <Leader>s :call RunNearestSpec()<CR>
 map <Leader>l :call RunLastSpec()<CR>
" Overwrite g:rspec_command variable to execute a custom command.
" let g:rspec_command = "!rspec --drb {spec}"
" let g:rspec_command = "Dispatch zeus rspec {spec}"



" Bundle 'The-NERD-tree'
" autocmd vimenter * if !argc() | NERDTree | endif
" see https://github.com/kien/ctrlp.vim
" see http://kien.github.io/ctrlp.vim/
Bundle 'kien/ctrlp.vim'
" Create a file called root.dir in the root of your project - to make CtrlP work really nicely

" autosave sessions
" Use :Obsess (with optional file/directory name) to start recording to a
" session file and :Obsess! to stop and throw it away. That's it. Load a
" session in the usual manner: vim -S, or :source it.
" invoke :mksession whenever the layout changes (in particular, on BufEnter),
" so that even if Vim exits abnormally, I'm good to go.
Bundle 'tpope/vim-obsession'

" ysiW]  you surround inner WORD bracket -> [WORD]
" ysip<C-t> you surround inner paragraph html tag <>
Bundle 'tpope/vim-surround'
" :Tabularize assignment
" auto align all text
Bundle 'godlygeek/tabular'


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
