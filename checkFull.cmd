@echo off
set positive=0
set negative=0
for /f "tokens=*" %%a in ('dir /b %GITHUB%\%1\*.%1') do call :check %1 %%a
echo.
echo [92m%positive%[0m - [91m%negative%[0m

:check
    if "%2"=="" exit /b 0
    for /f "tokens=*" %%b in ('type %GITHUB%\%1\readme.md ^| find "`%2`" /C') do set count=%%b
    if %count%==0 (
        set /a negative=negative+1
        echo [91m%2[0m
    ) else (
        set /a positive=positive+1
    )
exit /b 0