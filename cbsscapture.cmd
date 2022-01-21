call cbss.cmd || exit /b 1
if exist install.wim del install.wim
dism /capture-image /imagefile:install.wim /capturedir:X:\image /name:"Windows 10 Enterprise" /compress:max || exit /b 1
