@echo off
if "%1"=="" (
    echo Please provide a venv name
    exit /b 1
)
%userprofile%\venv\%1\Scripts\activate.bat