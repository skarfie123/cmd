@echo off
set positive=0
set negative=0
for /f "tokens=*" %%a in ('dir /b %GITHUB%\cmd\*.cmd') do call :check %%a
echo.
echo [92m%positive%[0m - [91m%negative%[0m

:check
    if "%1"=="" exit /b 0
    for /f "tokens=*" %%b in ('type %GITHUB%\cmd\readme.md ^| find "`%1`" /C') do set count=%%b
    if %count%==0 (
        set /a negative=negative+1
        echo [91m%1[0m
    ) else (
        set /a positive=positive+1
    )
exit /b 0