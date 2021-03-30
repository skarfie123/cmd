@echo off
tasklist  /FO "CSV" /NH > ram.csv
set ramTotal=0
for /f "usebackq tokens=1-6 delims=,K" %%a in ("ram.csv") do (
    set /a ramTotal=%%e%%f+ramTotal
)
set /a ramTotal=ramTotal/1000
echo %ramTotal% MB
del ram.csv
pause