@echo off
if "%~1"=="" (
    code %GITHUB%\AHK
    GOTO:EOF
)

if not exist %GITHUB%\AHK\%1.ahk (
    echo.>%GITHUB%\AHK\%1.ahk
    echo #Include, %1.ahk>>%GITHUB%\AHK\main.ahk
)
npp %GITHUB%\AHK\%1.ahk