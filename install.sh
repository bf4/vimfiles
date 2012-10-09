#!/usr/bin/env bash
# ./init.sh
git submodule update --init
git clone https://github.com/gmarik/vundle.git $HOME.vim/bundle/vundle
vim +BundleInstall +qall

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
echo 'switching to system ruby'
rvm use system
#  rbenv local system
cd $HOME/.vim/bundle/Command-T/ruby/command-t
export ARCHFLAGS="-arch i386"
ruby extconf.rb
make
echo 'done. returning to default rvm ruby'
rvm use default
