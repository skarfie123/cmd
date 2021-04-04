@echo off
if "%1"=="" (
    echo Please provide a python version
    exit /b 1
)
if "%2"=="" (
    echo Please provide a venv name
    exit /b 1
)
set current=%cd%
cd %userprofile%\venv
call venvh %1 %2
cd %current%

if "%~3"=="" (
    exit /b 0
)

echo %~3 > %userprofile%\venv\%2.desc