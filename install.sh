#!/usr/bin/env bash

echo -e "$C_RED
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
         ░    ░  ░    ░ ░        ░   ░         ░
$C_OFF"

mkdir -p ~/.config/coc/ultisnips/
mkdir -p ~/.config/nvim/after
mkdir -p ~/.config/nvim/temp_dirs/undodir
mkdir -p ~/.config/nvim/vscode-snippets
mkdir -p ~/.omnisharp

echo -e "$C_GREEN Copying init.vim...$C_OFF"
cp ./vim/init.vim ~/.config/nvim/init.vim

echo -e "$C_GREEN Copying language specific files...$C_OFF"
cp -r ./ftplugin ~/.config/nvim/after/

echo -e "$C_GREEN Copying Utilsnips snippets...$C_OFF"
cp -r ./snippets/*.snippets ~/.config/coc/ultisnips/

echo -e "$C_GREEN Copying Vscode snippets...$C_OFF"
cp -r ./snippets/*.json ~/.config/nvim/vscode-snippets

echo -e "$C_GREEN Copying Coc settings...$C_OFF"
cp ./settings/coc-settings.json ~/.config/nvim/coc-settings.json

echo -e "$C_GREEN Copying Omnisharp settings...$C_OFF"
cp ./settings/omnisharp.json ~/.omnisharp


echo -e "$C_GREEN Copying fancy fonts$C_OFF"
[[ ! -d "$HOME/.config/nvim/figlet/fonts" ]] && mkdir -p ~/.config/nvim/figlet/fonts && git clone https://github.com/xero/figlet-fonts ~/.config/nvim/figlet/fonts

# uncomment this line if markdown does not work
#[[ ! -d "$HOME/.vim/bundle/markdown-preview.nvim/node_modules" ]] && cd ~/.vim/bundle/markdown-preview.nvim && yarn install && cd -
