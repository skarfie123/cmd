@echo off
set current=%cd%
cd %userprofile%\venv
call venv.cmd %*
cd %current%