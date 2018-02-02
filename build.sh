#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd src/

xcode-select --install \
    ; brew reinstall python --framework \
    && ./configure --with-features=huge --enable-multibyte --with-macarchs=x86_64 --enable-perlinterp --enable-rubyinterp --enable-tclinterp --with-tlib=ncurses --with-local-dir=/usr/local --enable-cscope --enable-pythoninterp --with-python-config-dir=~/anaconda3/bin/python3-config \
    && make \
    && cd - \
    && ~/loadrc/gitrc/gci.sh \
    && ln -fs "$SCRIPTPATH"/src/MacVim/mvim /usr/local/bin/vim

cd -
