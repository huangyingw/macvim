#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd src/
./configure --with-features=huge --enable-multibyte --with-macarchs=x86_64 --enable-perlinterp --enable-rubyinterp --enable-tclinterp --with-tlib=ncurses --enable-cscope --enable-pythoninterp \
    && make \
    && cd - \
    && ln -fs "$SCRIPTPATH"/src/MacVim/mvim /usr/local/bin/vim \
    && ~/loadrc/gitrc/gci.sh

cd -
