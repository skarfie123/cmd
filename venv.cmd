@echo off
if "%1"=="" (
    echo Please provide a venv name
    exit /b 1
)
set current=%cd%
cd %userprofile%\venv
call venvh %1
cd %current%

if "%~2"=="" (
    exit /b 0
)

echo %~2 > %1.desc