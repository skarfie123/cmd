@echo off
IF "%1"=="" GOTO none 
   more %GITHUB%\cmd\%1.cmd
goto:eof 
 
:none
   echo [92mcmd:[0m
   dir /B %GITHUB%\cmd\*.cmd
   echo [92mexe:[0m
   dir /B %GITHUB%\cmd\*.exe
goto:eof