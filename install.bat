rd %LOCALAPPDATA%\nvim\after /q/s

mkdir %LOCALAPPDATA%\nvim\after

echo "Copying init.vim..."
copy init.vim %LOCALAPPDATA%\nvim\init.vim

echo "Copying language specific files..."
xcopy ftplugin %LOCALAPPDATA%\nvim\after
