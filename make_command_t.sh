#!/usr/bin/env bash
# use system ruby for building plugins with ruby extensions
# currently rvm only
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
echo 'switching to system ruby'
rvm use system
#  rbenv local system
cd ~/.vim/bundle/Command-T/ruby/command-t
# export ARCHFLAGS="-arch i386" # I forget why we need this...
# http://sperchard.tumblr.com/post/11137689119/command-t-vim-could-not-load-the-c-extension
make clean
env ARCHFLAGS="-arch x86_64" ruby extconf.rb
env ARCHFLAGS="-arch x86_64" make
ruby extconf.rb
make
echo 'done. returning to default rvm ruby'
rvm use default
cd ../../../..


