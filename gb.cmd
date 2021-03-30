@echo off
if "%1"=="" (
    call gbl
    exit /b 0
)
git checkout -b %*