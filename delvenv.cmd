@echo off
if "%1"=="" (
    echo Please provide a venv name
    exit /b 1
)

rmdir %userprofile%\venv\%1 /S /Q
if exist %userprofile%\venv\%1.desc del %userprofile%\venv\%1.desc