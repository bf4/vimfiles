let mapleader=","
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>y "*y
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>
" Can't be bothered to understand ESC vs <c-c> in insert mode
imap <c-c> <esc>
" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()
nnoremap <leader><leader> <c-^>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

""" other
" from http://www.drbunsen.org/text-triumvirate.html
" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
"
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" from http://www.bestofvim.com/tip/trailing-whitespace/
" trailing whitespace will be highlighted automatically
" match ErrorMsg '\s\+$'
"<Leader>rtw will remove trailing whitespace.
nnoremap <Leader>rtw :%s/\s\+$//e<CR>
" function for autocmd to remove trailing whitespace
" automatically kills trailing whitespace when Vim writes
" Removes trailing spaces
" function TrimWhiteSpace()
"     %s/\s\+$//e
" :endfunction

" autocmd FileWritePre    * :call TrimWhiteSpace()
" autocmd FileAppendPre   * :call TrimWhiteSpace()
" autocmd FilterWritePre  * :call TrimWhiteSpace()
" autocmd BufWritePre     * :call TrimWhiteSpace()
" autocmd FileType ruby,haml,erb autocmd FileWritePre    * :call TrimWhiteSpace()
" autocmd FileType ruby,haml,erb autocmd FileAppendPre   * :call TrimWhiteSpace()
" autocmd FileType ruby,haml,erb autocmd FilterWritePre  * :call TrimWhiteSpace()
" autocmd FileType ruby,haml,erb autocmd BufWritePre     * :call TrimWhiteSpace()
"
"
" Mappings for plugins
silent! nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
" silent! nnoremap <silent> <Leader>t :CommandT<CR>
silent! nnoremap <silent> <Leader>e :TagbarToggle<CR>
silent! nnoremap <silent> <Leader>l :set list!<CR>
silent! nnoremap <silent> <Leader>] :nohls<CR>
silent! nnoremap <silent> <Leader>a :Ack <cword><CR>

" tslime.vim bindings https://github.com/jgdavey/tslime.vim
" vmap <C-c><C-c> <Plug>SendSelectionToTmux
" nmap <C-c><C-c> <Plug>NormalModeSendToTmux
" nmap <C-c>r <Plug>SetTmuxVars

silent! nmap <silent> <C-s> :w<CR>

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"
"
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
