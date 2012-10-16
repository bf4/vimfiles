if has("win32") || has("win64")
  set directory=$TMP
else
  " ending with the double slash includes the full path in the filename
  " of the swap files to avoid conflicts
  set directory=~/.vim/tmp//
  " _ backups {{{
  " set undodir=~/.vim/undodir//     " undo files
  set backupdir=~/.vim/tmp/backup// " backups
  " set directory=~/.vim/tmp/swap//   " swap files
  set backup
  " set noswapfile
  " " _ }}}
  " the below breaks vi from the cli for some reason
  " set backspace+=start,eol,indent
  " set backspace=indent,eol,start
  " Set up persistent undo for versions of vim that support it
  if v:version >= 703
    set undodir=~/.vim/undodir
    set undofile
    set undolevels=1000
    set undoreload=1000
  endif
end
set history=1000
set incsearch
set laststatus=2
set list
set encoding=utf-8
" Disable the macvim toolbar
" set guioptions-=T

" set nobackup
" Having this set will not leave any additional file(s) around after having closed VIM. This is what most people might be looking to have set.

" set nowritebackup
"I do not set this one. The default is :set writebackup This will keep a backup file while the file is being worked. Once VIM is closed; the backup will vanish.

" set noswapfile
" From the VIM help file.
" - Don’t use this for big files.
" - Recovery will be impossible!
" In essence; if security is a concern, use noswapfile. Keep in mind that this option will keep everything in memory.
"
" don't require me to press enter when redrawing the screen
" set shortmess+=A

"necessary on some Linux distros for pathogen to properly load bundles
filetype on
filetype off

"load ftplugins and indent files
filetype plugin on
filetype indent on


"Show line numbers
set number

"hide buffers when not displayed
set hidden
" use improved vim
set nocompatible


set tabstop=2


" Indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Setup searching
set incsearch
set hlsearch


set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
" set showbreak=…
set showbreak=↪

" bing bell
set visualbell

" Set tab completion properly
set wildmode=longest,list,full
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc
set wildmenu

" Yank from current cursor position to end of line
map Y y$
"
" " Triggers {{{
"
" " Save when losing focus
" au FocusLost    * :silent! wall
"
" " }}}
