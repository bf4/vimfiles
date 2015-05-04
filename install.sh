#!/usr/bin/env bash
# ensure temp dirs exist
set -e

[ -e "autoload/plug.vim" ] ||
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ./tmp
mkdir -p ~/.vim-tmp

# link .vim and .vimrc
cwd=$(pwd)
suffix=$(date +"%Y_%m_%d")

from="${cwd}"
to="$HOME/.vim"
[ -e "$to" ] &&
  mv "$to" "${to}.old_${suffix}"
ln -s "$from" "$to" || $!

from="${cwd}/vimrc"
to="$HOME/.vimrc"
[ -e "$to" ] &&
  mv "$to" "${to}.old_${suffix}"
ln -s "$from" "$to" || $!

mkdir -p bundle
vim +PlugClean +PlugInstall +qall
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
