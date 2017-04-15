#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

./configure --with-features=huge --enable-multibyte --with-macarchs=x86_64 --enable-perlinterp --enable-rubyinterp --enable-tclinterp --with-tlib=ncurses --with-compiledby=Homebrew --with-local-dir=/usr/local --enable-cscope --enable-pythoninterp \
    && make

cd -
