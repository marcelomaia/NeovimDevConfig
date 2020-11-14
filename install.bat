if not exist %LOCALAPPDATA%\nvim\after mkdir %LOCALAPPDATA%\nvim\after

if not exist %USERPROFILE%\.config\nvim\vscode-snippets mkdir %USERPROFILE%\.config\nvim\vscode-snippets

if not exist %LOCALAPPDATA%\nvim\figlet\fonts mkdir %LOCALAPPDATA%\nvim\figlet\fonts && git clone https://github.com/xero/figlet-fonts %LOCALAPPDATA%\nvim\figlet\fonts

if not exist %USERPROFILE%\.vim\bundle\Vundle.vim mkdir %USERPROFILE%\.vim\bundle\Vundle.vim && git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%\.vim\bundle\Vundle.vim

echo "Copying init.vim..."
xcopy vim\init.vim %LOCALAPPDATA%\nvim\init.vim

echo "Copying coc settings..."
xcopy settings\coc-settings.json %LOCALAPPDATA%\nvim\

echo "Copying language specific files..."
xcopy ftplugin %LOCALAPPDATA%\nvim\after

echo "Installing plugins..."
nvim  +PluginInstall +qall
