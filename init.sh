#!/usr/bin/env bash
# called by install.sh
mkdir -p ./tmp
mkdir -p $HOME/.vim-tmp
# link .vim and .vimrc
mv ~/.vim ~/.vim.oldbf
ln -s $(pwd) ~/.vim
mv ~/.vimrc ~/.vimrc.oldbf
ln -s $(pwd)/vimrc ~/.vimrc
# install ctags
# https://github.com/tpope/gem-ctags
echo 'brew install ctags'
echo 'gem install gem-ctags'
echo 'gem ctags'
# If you're using RVM, I recommend extending your global gemset by adding 
echo 'addi gem-ctags to rvm global gemset'
echo "echo 'gem-ctags' >> ~/.rvm/gemsets/global.gems"
echo 'then Put it at the top so the gems below it will be indexed.'
