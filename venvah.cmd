@echo off
if "%1"=="" (
    if exist env\ (
        env\Scripts\activate.bat
    ) else (
        echo Please provide a venv name
        exit /b 1
    )
)
%1\Scripts\activate.bat