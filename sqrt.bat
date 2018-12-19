@echo off
setlocal
rem sqrt.bat 200000000
set x=%1
if %x% equ 0 exit /b 0
set s=1
set p=%x%
:nxt1
if %s% GEQ %p% goto :nxt2
set /a "s<<=1"
set /a "p>>=1"
goto nxt1
:nxt2
set /a p=s
set /a "s=(x/s+s)>>1"
if %s% LSS %p% goto nxt2
exit /b %p%
