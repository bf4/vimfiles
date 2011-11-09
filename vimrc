"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"load ftplugins and indent files
filetype plugin on
filetype indent on

" I hate you MacVim
set go+=c

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

set tabstop=2

if has("gui_running")
  set t_Co=256
  
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h14
  else
    set guifont=Monospace\ Bold\ 12
  endif
else
  "dont load csapprox if there is no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
endif

" Mappings for plugins
silent! nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
silent! nnoremap <silent> <Leader>t :CommandT<CR>
silent! nnoremap <silent> <Leader>e :TagbarToggle<CR>
silent! nnoremap <silent> <Leader>l :set list!<CR>
silent! nnoremap <silent> <Leader>] :nohls<CR>
silent! nnoremap <silent> <Leader>a :Ack <cword><CR>

silent! nmap <silent> <C-s> :w<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Indent settings
set shiftwidth=2 
set softtabstop=2
set expandtab
set autoindent

" Setup searching
set incsearch
set hlsearch

" Load tags from current or any parent path
set tags=tags;/

set listchars=tab:▸\ ,eol:¬
set showbreak=…

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

" Set tab completion properly
set wildmode=longest,list,full
set wildmenu

set runtimepath+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'The-NERD-tree'
Bundle 'Command-T'
Bundle 'SuperTab'
Bundle 'vim-coffee-script'
Bundle 'ack.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'Tagbar'
Bundle 'haml.zip'
Bundle 'railscasts'
Bundle 'endwise.vim'
Bundle 'IndexedSearch'
Bundle 'bufexplorer.zip'
Bundle 'Gundo'

colorscheme railscasts

if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
