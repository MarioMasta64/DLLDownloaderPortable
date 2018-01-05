@echo off
cls
Color 0A
del dll32.txt & del dll64.txt
for %%a in (.\dll\32\*.dll) do @echo %%~nxa >> dll32.txt
for %%a in (.\dll\64\*.dll) do @echo %%~nxa >> dll64.txt
:: for /r %%f in (.\dll\32\*.dll) do (echo %%~nxf >> dll32.txt)
:: for /r %%f in (.\dll\64\*.dll) do (echo %%~nxf >> dll64.txt)
pause