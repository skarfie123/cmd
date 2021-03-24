@echo off
setlocal ENABLEDELAYEDEXPANSION

if "%1"=="" (
    echo Please provide number
    exit /b 1
)
if "%2"=="" (
    echo Please provide command
    exit /b 1
)

@REM next two lines from https://stackoverflow.com/a/45969239
set _command=%*
call set _command=%%_command:*%1 =%%

FOR /L %%i IN (1, 1, %1) DO (
    ver > NUL
    echo Running %%i
    %_command% > NUL
    echo [1A[2K[1A
    IF !errorlevel! NEQ 0 (
        echo Error Level !errorlevel! at Run %%i
    )
)



