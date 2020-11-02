#!/bin/sh

mkdir -p ~/.config/nvim/after
mkdir -p ~/.config/nvim/vscode-snippets
mkdir -p ~/.config/coc/ultisnips/

echo "Copying init.vim..."
cp ./vim/init.vim ~/.config/nvim/init.vim

echo "Copying language specific files..."
cp -r ./ftplugin ~/.config/nvim/after/

#echo "Copying Utilsnips snippets..."
#cp -r ./snippets/*.snippets ~/.config/coc/ultisnips/

echo "Copying Vscode snippets..."
cp -r ./snippets/*.json ~/.config/nvim/vscode-snippets

echo "Copying Coc settings..."
cp ./settings/coc-settings.json ~/.config/nvim/coc-settings.json

# TODO: ask if is desired to change caps for esc
