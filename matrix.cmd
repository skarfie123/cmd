@echo off
setlocal ENABLEDELAYEDEXPANSION

FOR /F "delims=:, tokens=2" %%a IN ('mode ^| find "Columns"') DO (
    set size=%%a
)

:loop
    set str=
    FOR /L %%i IN (2, 2, %size%) DO (
        set str=!random:~-1! !str!
    )
    echo [92m%str%[0m
goto loop