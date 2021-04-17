@echo off 
@REM https://superuser.com/questions/87364/can-windows-tell-me-what-is-using-my-usb-drive
if "%~1"=="" (
    set count=1
) else (
    set count=%~1
)

wevtutil qe System /q:"*[System[(EventID=225)]]" /c:%count% /f:text /rd:true