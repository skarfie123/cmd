@echo off
wt -w _quake nt cmd /K splash; nt cmd /C "check & pause"; nt cmd /C "checkAHK & pause"; nt -d %GITHUB% cmd /C gsa