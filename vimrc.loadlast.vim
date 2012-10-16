if has("autocmd")
  " autocmd BufReadPost fugitive://* set bufhidden=delete
endif

" fugitive
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
