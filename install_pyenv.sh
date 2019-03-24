#!/bin/bash
[ -d ~/.pyenv ] || git clone git://github.com/yyuu/pyenv.git ~/.pyenv
. ~/.dotfiles/.pyenv_env
pyenv install --list|grep "^  [0-9]"
