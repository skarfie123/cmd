@echo off
if "%~1"=="" (
    echo Please provide zip file
    exit /b 1
)

7z x %1