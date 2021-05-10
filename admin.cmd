@echo off
@REM https://stackoverflow.com/a/11995662/6023007

net session >nul 2>&1

if %errorLevel% == 0 (
    echo [92mAdmin[0m
) else (
    echo [91mNot Admin[0m
)