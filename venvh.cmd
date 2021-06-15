@echo off
if "%1"=="" (
    echo Please provide a python version
    exit /b 1
)
if "%2"=="" (
    echo Please provide a venv name
    exit /b 1
)
py -%1 -m venv %2

call venvah %2