#!/bin/bash

# Dependencies checks
command -v git >/dev/null 2>&1 || { echo >&2 "I require git but it's not installed.  Aborting."; exit 1; }

# Install Vundle
GIT=$(command -v git)
$GIT clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Backup .vimrc if exist
if [ -f ~/.vimrc ]; then
  echo 'cp ~/.vimrc ~/.vimrc.old'
  cp ~/.vimrc ~/.vimrc.old
fi

# Download .vimrc
curl https://raw.githubusercontent.com/kswgit/vimrc/master/.vimrc -O ~/.vimrc

#Install Plugins
vim +PluginInstall +qall

