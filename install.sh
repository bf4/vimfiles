#!/usr/bin/env bash
# ensure temp dirs exist
set -e

mkdir -p ./tmp
mkdir -p ~/.vim-tmp

# link .vim and .vimrc
mv ~/.vim ~/.vim.oldvim
ln -s $(pwd) ~/.vim
mv ~/.vimrc ~/.vimrc.oldbf
ln -s $(pwd)/vimrc ~/.vimrc

mkdir -p bundle
# required to add vundler to bundle/vundle
git submodule update --init
# install vundle and have it install the bundles
git clone https://github.com/gmarik/vundle.git bundle/vundle
vim +PluginInstall +qall
if [ $? -ne 0 ]
then
  exit 1
fi
if uname -s | grep -q Darwin
then
  echo 'setting compile flags for OSX'
  export CFLAGS=-Qunused-arguments
  export CPPFLAGS=-Qunused-arguments
elif uname -s | grep -q Linux
then
  echo 'Installing python-dev for Linux'
  apt-get install python-dev
fi
if [ $? -eq 0 ]
then
  echo 'compiling'
  cd ~/.vim/bundle/ctrlp-cmatcher/
  ./install.sh
  cd -
fi

# install ctags
# https://github.com/tpope/gem-ctags
# assuming homebrew
echo 'brew install ctags'
echo 'gem install gem-ctags'
echo 'gem ctags'
# If you're using RVM, I recommend extending your global gemset by adding
echo 'adding gem-ctags to top of rvm global gemset (hopefully not twice)'
echo "gem-ctags" |cat - ~/.rvm/gemsets/global.gems > /tmp/out && mv /tmp/out ~/.rvm/gemsets/global.gems
# echo "echo 'gem-ctags' >> ~/.rvm/gemsets/global.gems"
# echo 'then Put it at the top so the gems below it will be indexed.'
