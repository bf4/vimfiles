"
"setup the mouse for terminal use
set mouse=a
set ttymouse=xterm2

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
    colorscheme benjamin
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
  " colorscheme grb3
  colorscheme asmanian_bloodBF
endif
