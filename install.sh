#!/bin/sh

# install applications
sh ./install-neovim.sh
sh ./install-tmux.sh
sh ./install-i3wm.sh

cp redshift.conf ~/.config/
cp -r i3 ~/.config/
cp .vimrc ~/
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
cp .vimrc ~/.config/nvim/init.vim
cp .zshrc ~/
cp .tmux.conf ~/
