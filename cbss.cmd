format X: /q /y || exit /b 1

mkdir X:\registry || exit /b 1
xcopy /cherkyq reg X:\registry || exit /b 1

pushd X:\registry
call makeall.cmd >NUL 2>&1 || ( popd & exit /b 1 )
popd

mkdir X:\logs || exit /b 1
mkdir X:\temp || exit /b 1
mkdir X:\image || exit /b 1

mkdir X:\image\Users || exit /b 1
mkdir X:\image\Windows || exit /b 1
mkdir X:\image\Users\Default || exit /b 1
mkdir X:\image\Windows\servicing || exit /b 1
mkdir X:\image\Windows\Setup || exit /b 1
mkdir X:\image\Windows\System32 || exit /b 1
mkdir X:\image\Windows\WinSxS || exit /b 1
mkdir X:\image\Windows\servicing\Packages || exit /b 1
mkdir X:\image\Windows\servicing\Sessions || exit /b 1
mkdir X:\image\Windows\servicing\Version || exit /b 1
mkdir X:\image\Windows\servicing\Version\10.0.22000.1 || exit /b 1
mkdir X:\image\Windows\Setup\State || exit /b 1
mkdir X:\image\Windows\System32\CatRoot || exit /b 1
mkdir X:\image\Windows\System32\config || exit /b 1
mkdir X:\image\Windows\System32\Dism || exit /b 1
mkdir X:\image\Windows\System32\downlevel || exit /b 1
mkdir X:\image\Windows\System32\SMI || exit /b 1
mkdir X:\image\Windows\System32\CatRoot\{127D0A1D-4EF2-11D1-8608-00C04FC295EE} || exit /b 1
mkdir X:\image\Windows\System32\CatRoot\{F750E6C3-38EE-11D1-85E5-00C04FC295EE} || exit /b 1
mkdir X:\image\Windows\System32\SMI\Schema || exit /b 1
mkdir X:\image\Windows\System32\SMI\Store || exit /b 1
mkdir X:\image\Windows\System32\SMI\Store\MACHINE || exit /b 1
mkdir X:\image\Windows\WinSxS\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4 || exit /b 1
mkdir X:\image\Windows\WinSxS\Backup || exit /b 1
mkdir X:\image\Windows\WinSxS\Catalogs || exit /b 1
mkdir X:\image\Windows\WinSxS\FileMaps || exit /b 1
mkdir X:\image\Windows\WinSxS\Manifests || exit /b 1

echo:[State]>X:\image\Windows\Setup\State\State.ini
echo:ImageState=IMAGE_STATE_GENERALIZE_RESEAL_TO_OOBE>X:\image\Windows\Setup\State\State.ini>>X:\image\Windows\Setup\State\State.ini

copy /Y X:\registry\out\NTUSER.DAT X:\image\Users\Default || exit /b 1
copy /Y X:\registry\out\BBI X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\COMPONENTS X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\BBI X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\DEFAULT X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\DRIVERS X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\ELAM X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\SAM X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\SECURITY X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\SOFTWARE X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\SYSTEM X:\image\Windows\System32\config || exit /b 1
copy /Y X:\registry\out\SCHEMA.DAT X:\image\Windows\System32\SMI\Store\MACHINE || exit /b 1

copy /Y sxs\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4\amd64_installed X:\image\Windows\servicing\Version\10.0.22000.1 || exit /b 1
copy /Y sxs\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4\WcmTypes.xsd X:\image\Windows\System32\SMI\Schema || exit /b 1

copy /Y sxs\amd64_microsoft-windows-installer-engine_31bf3856ad364e35_10.0.22000.1_none_59be1bd1b84dd271\msi.dll X:\image\Windows\System32 || exit /b 1
copy /Y sxs\amd64_microsoft-windows-ntdll_31bf3856ad364e35_10.0.22000.1_none_af1a7be800f6bf86\ntdll.dll X:\image\Windows\System32 || exit /b 1
copy /Y sxs\amd64_microsoft-windows-os-kernel_31bf3856ad364e35_10.0.22000.1_none_c273ff46b8ec25d8\ntoskrnl.exe X:\image\Windows\System32 || exit /b 1
copy /Y sxs\amd64_microsoft-windows-packagemanager_31bf3856ad364e35_10.0.22000.1_none_431b61c1f80d5917\SSShim.dll X:\image\Windows\System32 || exit /b 1
copy /Y sxs\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4\wdscore.dll X:\image\Windows\System32 || exit /b 1

xcopy /cherkyq sxs\amd64_microsoft-windows-d..-winproviders-image_31bf3856ad364e35_10.0.22000.1_none_f52312d82e8b5bd7 X:\image\Windows\System32\Dism || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-d..-winproviders-local_31bf3856ad364e35_10.0.22000.1_none_7a708a308a480b21 X:\image\Windows\System32\Dism || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-d..ing-management-core_31bf3856ad364e35_10.0.22000.1_none_8177c3ab2f882ea4 X:\image\Windows\System32\Dism || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-d..ing-management-host_31bf3856ad364e35_10.0.22000.1_none_83af12232e1bdf0d X:\image\Windows\System32\Dism || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-servicingcommon_31bf3856ad364e35_10.0.22000.1_none_91a0c0a620a7b4ab X:\image\Windows\System32\Dism || exit /b 1

xcopy /cherkyq sxs\amd64_microsoft-windows-c..namespace-downlevel_31bf3856ad364e35_10.0.22000.1_none_2e3d476296acf2a3 X:\image\Windows\System32\downlevel || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-m..namespace-downlevel_31bf3856ad364e35_10.0.22000.1_none_1da8785685e3614b X:\image\Windows\System32\downlevel || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-m..namespace-downlevel_31bf3856ad364e35_10.0.22000.1_none_91d6b55b9a7b26d9 X:\image\Windows\System32\downlevel || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-m..namespace-downlevel_31bf3856ad364e35_10.0.22000.1_none_c7860cfbde9f3d06 X:\image\Windows\System32\downlevel || exit /b 1
xcopy /cherkyq sxs\amd64_microsoft-windows-o..namespace-downlevel_31bf3856ad364e35_10.0.22000.1_none_9760c06e86f52311 X:\image\Windows\System32\downlevel || exit /b 1

xcopy /cherkyq sxs\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4 X:\image\Windows\WinSxS\amd64_microsoft-windows-servicingstack_31bf3856ad364e35_10.0.22000.1_none_5fa2feeecc138dd4 || exit /b 1

dism /english /logpath:X:\logs\1.01.log /scratchdir:"X:\temp" /image:X:\image /apply-unattend:stages\1.xml || exit /b 1
dism /english /logpath:X:\logs\1.02.log /scratchdir:"X:\temp" /image:X:\image /apply-unattend:stages\2.xml || exit /b 1

copy X:\image\Windows\servicing\Editions\EnterpriseEdition.xml X:\image\Windows\Enterprise.xml

dism /english /logpath:X:\logs\2.log /scratchdir:"X:\temp" /image:X:\image /apply-unattend:X:\image\Windows\Enterprise.xml || exit /b 1
dism /english /logpath:X:\logs\3-currentedition.log /scratchdir:"X:\temp" /image:X:\image /get-currentedition || exit /b 1
dism /english /logpath:X:\logs\3-targetedition.log /scratchdir:"X:\temp" /image:X:\image /get-targeteditions || exit /b 1

dism /english /logpath:X:\logs\4-intl.log /scratchdir:"X:\temp" /image:X:\image /set-allintl:en-US || exit /b 1

dism /english /logpath:X:\logs\5-analyze.log /scratchdir:"X:\temp" /image:X:\image /cleanup-image /analyzecomponentstore || exit /b 1
dism /english /logpath:X:\logs\5-cleanup.log /scratchdir:"X:\temp" /image:X:\image /cleanup-image /startcomponentcleanup || exit /b 1
