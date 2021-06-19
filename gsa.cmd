@echo off
setlocal ENABLEDELAYEDEXPANSION

set good=On branch mainYour branch is up to date with 'origin/main'.nothing to commit, working tree clean
set good2=On branch masterYour branch is up to date with 'origin/master'.nothing to commit, working tree clean

for /f "tokens=*" %%a in ('dir /ad /b') do call :gs %%a

:gs
    if "%~1"=="" exit /b 0
    cd %1
    set result=
    FOR /F "tokens=*" %%p IN ('git status') DO set result=!result!%%p
    IF "%good%" EQU "!result!" (
        cd ..
        exit /b 0
    )
    IF "%good2%" EQU "!result!" (
        cd ..
        exit /b 0
    )
    echo.
    echo [92m%1:[0m
    git status 2>&1
    cd ..
    pause
    echo [1A[2K[1A
exit /b 0