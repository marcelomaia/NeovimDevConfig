#!/bin/bash

mkdir -p ~/.config/nvim/after

echo "Copying init.vim..."
cp ./init.vim ~/.config/nvim/init.vim

echo "Copying language specific files..."
cp -r ./ftplugin ~/.config/nvim/after/

