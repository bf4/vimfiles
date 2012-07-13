#!/usr/bin/env bash
git submodule update --init
vim +BundleInstall +qall

rvm use system
#  rbenv local system
cd $HOME/.vim/bundle/Command-T/ruby/command-t
export ARCHFLAGS="-arch i386"
ruby extconf.rb
make
