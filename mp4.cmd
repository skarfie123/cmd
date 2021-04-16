@echo off
if "%~1"=="" (
    echo Please provide a video
    exit /b 1
)
if "%~2"=="" (
    ffm -i %1 "%~n1.mp4"
) else (
    ffm -i %1 "%~n2.mp4"
)