#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${RED}
 ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
 ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
         ░    ░  ░    ░ ░        ░   ░         ░
${NC}"

mkdir -p ~/.config/nvim/after
mkdir -p ~/.config/nvim/vscode-snippets
mkdir -p ~/.config/coc/ultisnips/
mkdir -p ~/.omnisharp

echo -e "${GREEN} Copying init.vim...${NC}"
cp ./vim/init.vim ~/.config/nvim/init.vim

echo -e "${GREEN} Copying language specific files...${NC}"
cp -r ./ftplugin ~/.config/nvim/after/

echo -e "${GREEN} Copying Utilsnips snippets...${NC}"
cp -r ./snippets/*.snippets ~/.config/coc/ultisnips/

echo -e "${GREEN} Copying Vscode snippets...${NC}"
cp -r ./snippets/*.json ~/.config/nvim/vscode-snippets

echo -e "${GREEN} Copying Coc settings...${NC}"
cp ./settings/coc-settings.json ~/.config/nvim/coc-settings.json

echo -e "${GREEN} Copying Omnisharp settings...${NC}"
cp ./settings/omnisharp.json ~/.omnisharp


echo -e "${GREEN} Copying fancy fonts${NC}"
[[ ! -d "$HOME/.config/nvim/figlet/fonts" ]] && mkdir -p ~/.config/nvim/figlet/fonts && git clone https://github.com/xero/figlet-fonts ~/.config/nvim/figlet/fonts

[[ ! -d "$HOME/.vim/bundle/markdown-preview.nvim/node_modules" ]] && cd ~/.vim/bundle/markdown-preview.nvim && yarn install && cd -
