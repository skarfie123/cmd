@echo off
for /f "tokens=*" %%a in ('dir /ad /b') do echo [92m%%a:[0m & cd %%a & git status & cd ..