@echo off 
if "%~1"=="" (
    echo Please provide folder to zip
    exit /b 1
)

7z a "%~n1.zip" %1