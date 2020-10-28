#!/bin/bash

if [ -d "~/.vim/bundle/Vundle.vim" ]
then
    echo "Vundle already installed."
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Copying init.vim"
cp ./init.vim ~/.config/nvim/init.vim

echo "Copying language specific files..."
cp -r ./ftplugin ~/.config/nvim/after/

# TODO: auto install coc plugins
echo "Remember to install COC plugins..."

echo "Install plugins. :PluginInstall"
