"vim and vimrc resources. here's as good a spot as any
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" http://mislav.uniqpath.com/2011/12/vim-revisited/
" http://www.viemu.com/a-why-vi-vim.html
" http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118
"
" http://www.charlietanksley.net/philtex/my-vimrc-file/  http://www.charlietanksley.net/philtex/a-word-on-updating-vim/ http://www.charlietanksley.net/philtex/sane-vim-plugin-management/
" http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
" http://www.zinkwazi.com/unix/notes/vimtips.html
" http://code.alexreisner.com/articles/vim-heresy.html
" http://invisibletheory.com/2011/01/27/one-with-vim/
" http://blog.danielfischer.com/2010/11/19/a-starting-guide-to-vim-from-textmate/
" http://henrik.nyh.se/2011/01/textmate-to-vim-with-training-wheels
" http://paintincode.blogspot.com/2011/04/mac-vim-setup-for-python-programming.html
"
" sample configs
" https://github.com/smith/vim-config/blob/master/vimrc
" https://github.com/tpope/tpope
"
" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
" vim in chrome: http://vimium.github.com/
" vim with irb: http://vimcasts.org/episodes/running-vim-within-irb
"
" plugins to investigate
" https://github.com/tpope/vim-surround
" https://github.com/tpope/vim-cucumber
" https://github.com/tpope/vim-endwise
" https://github.com/tpope/vim-unimpaired
" https://github.com/tpope/vim-bundler
" https://github.com/tpope/gem-ctags
" command-t plugin, require ruby http://www.vim.org/scripts/script.php?script_id=3025
"
" colorscheme design
" http://bytefluent.com/vivify/
"
"
" ending with the double slash includes the full path in the filename
" of the swap files to avoid conflicts
set directory=~/.vim/tmp//
"
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


set listchars=tab:▸\ ,eol:¬
set showbreak=…


" Set tab completion properly
set wildmode=longest,list,full
set wildmenu


" colorscheme railscasts
" colorscheme Dark2BF
colorscheme asmanian_bloodBF


" Use local vimrcs if available {
    if filereadable(expand("~/.vim/vimrc.syntax.local"))
        source ~/.vim/vimrc.syntax.local
    endif
    if filereadable(expand("~/.vim/vimrc.guis.local"))
        source ~/.vim/vimrc.guis.local
    endif
    if filereadable(expand("~/.vim/vimrc.mappings.local"))
        source ~/.vim/vimrc.mappings.local
    endif
    if filereadable(expand("~/.vim/vimrc.plugins.local"))
        source ~/.vim/vimrc.plugins.local
    endif
    " if filereadable(expand("~/.vim/vimrc.statusline.local"))
    "     source ~/.vim/vimrc.statusline.local
    " endif
    if filereadable(expand("~/.vim/vimrc.experimental.local"))
        source ~/.vim/vimrc.experimental.local
    endif
" }

if has("autocmd")
  autocmd BufReadPost fugitive://* set bufhidden=delete
endif

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
