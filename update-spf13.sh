#!/usr/bin/env bash
cd $HOME/.spf13-vim
git pull upstream master
git submodule sync
git submodule update --init --recursive
