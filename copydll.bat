@echo off
cls
Color 0A
title VCRedist DLL Grabber - By MarioMasta64

if not exist dll mkdir dll
if not exist dll\32\ mkdir dll\32\
if not exist dll\64\ mkdir dll\64\

set /a version = 0
:loopget

copy %WINDIR%\system32\msvcr%version%.dll .\dll\32\
copy %WINDIR%\system32\msvcp%version%.dll .\dll\32\
copy %WINDIR%\system32\mfc%version%.dll .\dll\32\
copy %WINDIR%\system32\mfc%version%u.dll .\dll\32\
copy %WINDIR%\system32\mfcmifc%version%.dll .\dll\32\
copy %WINDIR%\system32\mfcm%version%.dll .\dll\32\
copy %WINDIR%\system32\mfcm%version%u.dll .\dll\32\

copy %WINDIR%\syswow64\msvcr%version%.dll .\dll\64\
copy %WINDIR%\syswow64\msvcp%version%.dll .\dll\64\
copy %WINDIR%\syswow64\mfc%version%.dll .\dll\64\
copy %WINDIR%\syswow64\mfc%version%u.dll .\dll\64\
copy %WINDIR%\syswow64\mfcmifc%version%.dll .\dll\64\
copy %WINDIR%\syswow64\mfcm%version%.dll .\dll\64\
copy %WINDIR%\syswow64\mfcm%version%u.dll .\dll\64\

set /a version+=10
if %version% LSS 140 goto loopget

pause