@echo off 
if "%~1"=="" (
    echo Please provide folder to zip
    exit /b 1
)

@REM TODO accept %2 for name and type

7z a "%~n1.zip" %1