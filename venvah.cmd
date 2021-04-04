@echo off
if "%1"=="" (
    echo Please provide a venv name
    exit /b 1
)
%1\Scripts\activate.bat