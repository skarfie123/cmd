@echo off
IF "%1"=="" GOTO none
IF "%1"==".desc" GOTO desc
   type %userprofile%\venv\%1.desc
goto:eof 
 
:none
   dir /B /AD %userprofile%\venv
goto:eof 
 
:desc
   dir /B %userprofile%\venv\*.desc
goto:eof