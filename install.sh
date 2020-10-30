#!/bin/bash

mkdir -p ~/.config/nvim/after

echo "Copying init.vim..."
cp ./init.vim ~/.config/nvim/init.vim
cp ./auto_install_vundle.vim ~/.config/nvim/auto_install_vundle.vim

echo "Copying language specific files..."
cp -r ./ftplugin ~/.config/nvim/after/

# TODO: ask if is desired to change caps for esc
