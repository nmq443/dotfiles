#!/bin/sh

# dependencies
sudo apt-get install ninja-build gettext cmake unzip curl build-essential

# build 
git clone https://github.com/neovim/neovim ~/neovim
cd ~/neovim
make make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
