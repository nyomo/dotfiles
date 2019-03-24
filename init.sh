#!/bin/bash
sudo locale-gen ja_JP.UTF-8
DOTFILEDIR=~/.dotfiles

ln -s $DOTFILEDIR/.bash_profile
ln -s $DOTFILEDIR/.git
ln -s $DOTFILEDIR/.gitconfig
ln -s $DOTFILEDIR/.tmux.conf
ln -s $DOTFILEDIR/.vimrc


mkdir -p ~/.vim/temp
mkdir -p ~/.vim/plugin
