#!/usr/bin/env bash
echo -e "$C_RED
  ▄████  ▄▄▄       ███▄ ▄███▓▓█████
 ██▒ ▀█▒▒████▄    ▓██▒▀█▀ ██▒▓█   ▀
▒██░▄▄▄░▒██  ▀█▄  ▓██    ▓██░▒███
░▓█  ██▓░██▄▄▄▄██ ▒██    ▒██ ▒▓█  ▄
░▒▓███▀▒ ▓█   ▓██▒▒██▒   ░██▒░▒████▒
 ░▒   ▒  ▒▒   ▓▒█░░ ▒░   ░  ░░░ ▒░ ░
  ░   ░   ▒   ▒▒ ░░  ░      ░ ░ ░  ░
░ ░   ░   ░   ▒   ░      ░      ░
      ░       ░  ░       ░      ░  ░

 ▒█████   ██▒   █▓▓█████  ██▀███
▒██▒  ██▒▓██░   █▒▓█   ▀ ▓██ ▒ ██▒
▒██░  ██▒ ▓██  █▒░▒███   ▓██ ░▄█ ▒
▒██   ██░  ▒██ █░░▒▓█  ▄ ▒██▀▀█▄
░ ████▓▒░   ▒▀█░  ░▒████▒░██▓ ▒██▒
░ ▒░▒░▒░    ░ ▐░  ░░ ▒░ ░░ ▒▓ ░▒▓░
  ░ ▒ ▒░    ░ ░░   ░ ░  ░  ░▒ ░ ▒░
░ ░ ░ ▒       ░░     ░     ░░   ░
    ░ ░        ░     ░  ░   ░
              ░
$C_OFF"

echo -e "$C_GREEN Removing .config/vim$C_OFF"
rm -rf ~/.config/nvim
echo -e "$C_GREEN Removing .config/coc$C_OFF"
rm -rf ~/.config/coc
echo -e "$C_GREEN Removing .vim$C_OFF"
rm -rf ~/.vim
echo -e "$C_GREEN Removing .omnisharp$C_OFF"
rm -rf ~/.omnisharp
