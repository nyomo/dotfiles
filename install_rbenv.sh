#!/bin/bash
[ -d ~/.rbenv ] || git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
[ -d ~/.rbenv/plugins/ruby-build ] ||  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
 
. ~/.dotfiles/.rbenv_env
