set nocompatible               " be iMproved
filetype off                   " required!

set runtimepath+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
" required! let Vundle manage Vundle
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
" see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Plugin command are not allowed..

Plugin 'endwise.vim'
" https://github.com/tpope/vim-endwise
" wisely
"  add "end" in ruby,
"  endfunction/endif/more in vim script,
"  etc

Plugin 'vim-scripts/tComment'
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


Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'

Plugin 'ap/vim-css-color'
" CSS color highlighter
" recommended by http://statico.github.io/vim2.html

Plugin 'thoughtbot/vim-rspec'
" Rspec.vim mappings
 map <Leader>t :call RunCurrentSpecFile()<CR>
"  map <Leader>s :call RunNearestSpec()<CR>
 map <Leader>l :call RunLastSpec()<CR>
" Overwrite g:rspec_command variable to execute a custom command.
" let g:rspec_command = "!rspec --drb {spec}"
" let g:rspec_command = "Dispatch zeus rspec {spec}"

Plugin 'kien/ctrlp.vim'
" see https://github.com/kien/ctrlp.vim
" see http://kien.github.io/ctrlp.vim/
" Create a file called root.dir in the root of your project - to make CtrlP work really nicely
" https://twitter.com/artemave/status/469204521219293185
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
" https://github.com/JazzCore/ctrlp-cmatcher
" POSIX
"   Linux
"     apt-get install python-dev
"   OSX
"     export CFLAGS=-Qunused-arguments
"     export CPPFLAGS=-Qunused-arguments
"   Then run the installation script:
"
"   cd ~/.vim/bundle/ctrlp-cmatcher/
"   ./install.sh
Plugin 'JazzCore/ctrlp-cmatcher'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

Plugin 'vim-coffee-script'
Plugin 'tpope/vim-rails'

Plugin 'plasticboy/vim-markdown'
" The following work on normal and visual modes:
" ]]: go to next header.
" [[: go to previous header. Contrast with ]c.
" ][: go to next sibling header if any.
" []: go to previous sibling header if any.
" ]c: go to Current header.
" ]u: go to parent header (Up).
let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby','javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml']
" let g:vim_markdown_folding_disabled=1
let g:vim_markdown_initial_foldlevel=100


" colorschemes
" Plugin 'vim-scripts/colorsupport.vim'
" used to make gui colorschemes work in the terminal
" see http://vim.wikia.com/wiki/Using_GUI_color_settings_in_a_terminal
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'bf4/vim-wombat256i'
Plugin 'molokai'
Plugin 'railscasts'
" see https://github.com/chriskempson/base16-builder/blob/master/base16
"     https://github.com/chriskempson/base16-builder/blob/master/base16
" Plugin 'chriskempson/base16-vim'
"
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
