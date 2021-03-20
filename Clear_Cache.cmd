@echo off

TITLE Cache Cleaner

REM Clean Local Temp folder

ECHO Cleaning Temp folder...
del %temp% /f /s /q
ECHO Temp folder cleaned.

REM Clean Windows Temp folder

ECHO Cleaning WinTemp folder...
del %windir%\temp /f /s /q
ECHO WinTemp folder cleaned.

REM Clean Prefetch folder

ECHO Cleaning Prefetch folder...
del %windir%\Prefetch /f /s /q
ECHO Prefetch folder cleaned.

REM Clean Windows Updates

ECHO Cleaning SoftwareDistribution folder...
set WUCDir="C:\Windows\SoftwareDistribution"
del %WUCDir% /f /s /q

REM Clean Microsoft Store Cache

ECHO Cleaning Store Cache...
wsreset.exe

REM Clean DNS Resolver Cache

ECHO Cleaning DNS Resolver Cache...
ipconfig /flushDNS

REM Clean Google Chrome Cache

ECHO Cleaning Google Chrome Cache...
set ChromeDir="C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default"
set ChromeCC="C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Code Cache"
del %ChromeDir%\Cache /f /s /q
del %ChromeCC% /f /s /q
del %ChromeDir%\GPUCache /f /s /q
ECHO Google Chrome Cache cleaned.

REM Completion
ECHO Cache cleaning complete.
pause