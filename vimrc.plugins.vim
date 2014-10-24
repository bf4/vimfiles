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



" see https://github.com/kien/ctrlp.vim
" see http://kien.github.io/ctrlp.vim/
Bundle 'kien/ctrlp.vim'
" Create a file called root.dir in the root of your project - to make CtrlP work really nicely

Bundle 'vim-coffee-script'
Bundle 'tpope/vim-rails'

" The following work on normal and visual modes:
" ]]: go to next header.
" [[: go to previous header. Contrast with ]c.
" ][: go to next sibling header if any.
" []: go to previous sibling header if any.
" ]c: go to Current header.
" ]u: go to parent header (Up).
Bundle 'plasticboy/vim-markdown'
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby','javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']
" let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=100
" https://github.com/tpope/vim-endwise
" wisely
"  add "end" in ruby,
"  endfunction/endif/more in vim script,
"  etc
Bundle 'endwise.vim'
" https://github.com/vim-scripts/tComment
" As operator (the prefix can be customized via g:tcommentMapLeaderOp1
" and g:tcommentMapLeaderOp2):
"
"     gc{motion}   :: Toggle comments (for small comments within one line
"                     the &filetype_inline style will be used, if
"                     defined)
"     gcc          :: Toggle comment for the current line
"     gC{motion}   :: Comment region
"     gCc          :: Comment the current line
Bundle 'vim-scripts/tComment'


" colorschemes
" see https://code.google.com/p/vimcolorschemetest/
" http://bytefluent.com/vivify/
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'bf4/vim-wombat256i'
Bundle 'molokai'
Bundle 'railscasts'
" see https://github.com/chriskempson/base16-builder/blob/master/base16
"     https://github.com/chriskempson/base16-builder/blob/master/base16
" Bundle 'chriskempson/base16-vim'

" grb
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
filetype plugin indent on     " required!
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
