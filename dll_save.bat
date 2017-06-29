@echo off
cls
Color 0A
del /s /q dll32.txt & del /s /q dll64.txt
for /r %%f in (.\dll\32\*.dll) do (echo %%~nxf >> dll32.txt)
for /r %%f in (.\dll\64\*.dll) do (echo %%~nxf >> dll64.txt)
pause