@echo off
for /f "tokens=*" %%a in ('dir /ad /b') do call :gs %%a

:gs
    if "%~1"=="" exit /b 0
    echo [92m%1:[0m
    cd %1
    git status 2>&1
    cd ..
    pause
    echo [1A[2K[1A
exit /b 0