#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd src/

xcode-select --install
brew reinstall python --framework
./configure \
    --enable-cscope \
    --enable-multibyte \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --enable-tclinterp \
    --enable-terminal \
    --with-features=huge \
    --with-macarchs=x86_64 \
    --with-python-config-dir=/usr/bin/python-config \
    --with-tlib=ncurses \
    && make \
    && cd - \
    && ~/loadrc/gitrc/gci.sh \
    && ln -fs "$SCRIPTPATH"/src/MacVim/mvim /usr/local/bin/vim

cd -
