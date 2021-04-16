@echo off
if "%~1"=="" (
    set command=tasklist /FO "CSV" /NH
) else (
    set command=tasklist /FI "IMAGENAME eq %~1" /FO "CSV" /NH
)
set ramTotal=0
for /f "tokens=1-6 delims=,K" %%a in ('%command%') do (
    set /a ramTotal=%%e%%f+ramTotal
)
set /a ramTotal=ramTotal/1000
echo %ramTotal% MB
pause