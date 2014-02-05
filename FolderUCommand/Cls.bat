@echo off

set delOtherPath=C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles
FOR /f "tokens=*" %%a in ('dir /b "%delOtherPath%" ^| findstr /i /C:"27.01.2014" /C:"26.12.2013"') do (
del /F /Q "%delOtherPath%\%%a"
)

set delScrPath=C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles\ScrFiles
FOR /f "tokens=*" %%b in ('dir /b "%delScrPath%" ^| findstr /i /C:"27.01.2014" /C:"26.12.2013"') do (
del /F /Q "%delScrPath%\%%b"
)

set delWordPath=C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\WFiles
FOR /f "tokens=*" %%c in ('dir /b "%delWordPath%" ^| findstr /i /C:"27.01.2014" /C:"26.12.2013"') do (
del /F /Q "%delWordPath%\%%c"
)

del "%~f0"
