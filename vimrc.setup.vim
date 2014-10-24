call pathogen#runtime_append_all_bundles()

" let vim edit a crontab successfully, no error
" crontab: temp file must be edited in place
" via comment on  http://drawohara.com/post/6344279/crontab-temp-file-must-be-edited-in-place
au FileType crontab set nobackup nowritebackup

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
" highlight current line
set cursorline
set cmdheight=2
set switchbuf=useopen
set numberwidth=5
set showtabline=2
set winwidth=79
" This makes RVM work inside Vim. I have no idea why.
set shell=bash
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
if has("win32") || has("win64")
  set backupdir=$TMP
  set directory=$TMP
else
  " _ backups {{{
  " set undodir=~/.vim/undodir//     " undo files
  " set backupdir=~/.vim/tmp/backup// " backups
  set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
  " ending with the double slash includes the full path in the filename
  " of the swap files to avoid conflicts
  " set directory=~/.vim/tmp//
  " set directory=~/.vim/tmp/swap//   " swap files
  " set backup
  " set noswapfile
  " " _ }}}
  " Set up persistent undo for versions of vim that support it
  " if v:version >= 703
  "   set undodir=~/.vim/undodir
  "   set undofile
  "   set undolevels=1000
  "   set undoreload=1000
  " endif
  set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
end
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" BF {
"Show line numbers
set number
set visualbell

" }
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
