@echo off
for /f "tokens=*" %%a in ('dir /b %GITHUB%\cmd\*.cmd') do call :check %%a

:check
    if "%1"=="" exit /b 0
    for /f "tokens=*" %%b in ('type %GITHUB%\cmd\readme.md ^| find "`%1`" /C') do set count=%%b
    if %count%==0 echo [91m%1[0m & exit /b 0
exit /b 0