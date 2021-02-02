@echo off
tasklist /FI "IMAGENAME eq chrome.exe" /FO "CSV" /NH > chrome.csv
set chromeTotal=0
for /f "usebackq tokens=1-6 delims=,K" %%a in ("chrome.csv") do (
    set /a chromeTotal=%%e%%f+chromeTotal
)
set /a chromeTotal=chromeTotal/1000
echo %chromeTotal% MB
del chrome.csv