@echo off
for /f "tokens=*" %%a in ('dir /b *.cmd') do call :check %%a

:check
    if "%1"=="" exit /b 0
    for /f "tokens=*" %%b in ('type readme.md ^| find "`%1`" /C') do set count=%%b
    if %count%==0 echo [91m%1[0m & exit /b 0
    echo [92m%1[0m
exit /b 0