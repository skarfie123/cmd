@echo off
if "%~1"=="" (
    code %GITHUB%\cmd
    GOTO:EOF
)

if not exist %GITHUB%\cmd\%1.cmd echo @echo off > %GITHUB%\cmd\%1.cmd
npp %GITHUB%\cmd\%1.cmd