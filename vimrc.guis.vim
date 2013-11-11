"
"setup the mouse for terminal use
set mouse=a
set ttymouse=xterm2
" see http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
" Show trailing whitespace:
au BufEnter * match ExtraWhitespace /\s\+$/
" match trailing whitespace, except when typing at the end of a line.
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" Show trailing whitespace:
au InsertLeave * match ExtraWhiteSpace /\s\+$/
" " Switch off :match highlighting.
" :match
" limit match memory leaks
" ruby syntax
	:let ruby_space_errors = 1
	:let ruby_no_expensive = 1
if version >= 702
      autocmd BufWinLeave * call clearmatches()
endif

if has("gui_running")
  "export TERM=screen-256color
  "# or:
  "export TERM=xterm-256color
  set t_Co=256

  if has("gui_mac") || has("gui_macvim")
    " Mac OSX specific copy / paste
    "Yank content in OS's clipboard
    vmap <leader>y "*y
    " Paste content from OS's clipboard
    nmap <leader>p "*p
    set guifont=Menlo:h14
    " colorscheme Dark2BF
    colorscheme asmanian_bloodBF
    " Tell MacVim not to pop up a dialog on changed file vs. swp
    set go+=c
  else
    set guifont=Monospace\ Bold\ 12
    colorscheme railscasts
    " highlight Normal ctermfg=grey ctermbg=darkblue
  endif
else
  "dont load csapprox if there is no gui support - silences an annoying warning
  let g:CSApprox_loaded = 1
  set background=dark
  " colorscheme solarized
  " colorscheme railscasts
  " highlight Normal ctermfg=grey ctermbg=black
  colorscheme grb3
endif
