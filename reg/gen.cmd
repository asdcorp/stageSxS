regini -h out\%1 %1 %2 || exit /b 1
reg load HKLM\tmp out\%1 || exit /b 1
setacl -on HKLM\tmp -ot reg -actn restore -bckp acls -actn rstchldrn -rst dacl,sacl || exit /b 1
reg unload HKLM\tmp || exit /b 1
