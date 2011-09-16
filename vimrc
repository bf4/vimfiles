"avoiding annoying CSApprox warning message
let g:CSApprox_verbose_level = 0

"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"Show line numbers
set number

"hide buffers when not displayed
set hidden
set nocompatible

"setup the mouse for terminal use
set mouse=a
set ttymouse=xterm2

if has("gui_running")
	set t_Co=256
	colorscheme railscasts
  set guifont=Monospace\ Bold\ 12
  
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h14
  endif
else
  "dont load csapprox if there is no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

" Mappings for plugins
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
silent! nmap <silent> <Leader>t :CommandT<CR>
silent! nmap <silent> <Leader>l :nohls<CR>

silent! nmap <silent> <C-s> :w<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Indent settings
set shiftwidth=2 
set softtabstop=2
set expandtab
set autoindent

" Setup searching
set incsearch
set hlsearch

"mapping for command key to map navigation thru display lines instead
"of just numbered lines
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
vmap <D-6> g^
vmap <D-0> g^
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g^

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'html5.vim'
Bundle 'The-NERD-tree'
Bundle 'Command-T'
Bundle 'Syntastic'
Bundle 'SuperTab'
Bundle 'vim-coffee-script'
Bundle 'ack.vim'
Bundle 'haml.zip'
Bundle 'asciidoc.vim'
Bundle 'Markdown'
Bundle 'csharp.vim'
Bundle 'jQuery'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'Railscasts-Theme-GUIand256color'
