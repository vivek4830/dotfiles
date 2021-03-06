#!/bin/bash

BASE_DIR=$(pwd)

# Set up tmux config
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# Customized tmux config file
cd $BASE_DIR
cp .tmux.conf.local ~/.tmux.conf.local

# Set up vim
mkdir -p ~/.vim
ln -s $BASE_DIR/pack ~/.vim/pack
cp .vimrc ~/.vimrc
