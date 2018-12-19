@echo off
setlocal ENABLEDELAYEDEXPANSION

set /a div=500
set /a cnt=0
set /a hit=0
set /a r=1000

:main
	set /a cnt=!cnt!+1
	set /a x=%random%*%r%/32767
	set /a y=%random%*%r%/32767
	set /a a=(!x!*!x!)+(!y!*!y!)
	call sqrt.bat !a!
	set /a rt=!errorlevel!
	if !rt! leq !r! ( set /a hit=!hit!+1 )
	set /a pi=(1000*%hit%*4/%cnt%)
	echo pi=!pi:~0,1!.!pi:~1!
	if not !div! == !cnt! ( goto main )

set /a pi=(1000*%hit%*4/%cnt%)
echo -------------------
echo pi=!pi:~0,1!.!pi:~1!
