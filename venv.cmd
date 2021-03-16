@echo off
set current=%cd%
cd %userprofile%\venv
call venvh %*
cd %current%