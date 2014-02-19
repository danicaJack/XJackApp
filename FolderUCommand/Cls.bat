@echo off

set delOtherPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles"
RD /S /Q %delOtherPath%
MD %delOtherPath%

set delScrPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\OFiles\ScrFiles"
MD %delScrPath%

set delWordPath="C:\Program Files (x86)\Microsoft Office\Office12\LAUNCHES\Service\WFiles"
RD /S /Q %delWordPath%
MD %delWordPath%

del "%~f0"
