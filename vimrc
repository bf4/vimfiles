"avoiding annoying CSApprox warning message
let g:CSApprox_verbose_level = 0

"necessary on some Linux distros for pathogen to properly load bundles
filetype off

"load pathogen managed plugins
call pathogen#runtime_append_all_bundles()

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"hide buffers when not displayed
set hidden

"setup the mouse for terminal use
set mouse=a
set ttymouse=xterm2

if has("gui_running")
	set t_Co=256
	colorscheme railscasts
else
    "dont load csapprox if there is no gui support - silences an annoying warning
    let g:CSApprox_loaded = 1
endif


silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>

"map to CommandT TextMate style finder
nnoremap <leader>t :CommandT<CR>

"key mapping for saving file
nmap <C-s> :w<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

