@echo off
IF "%1"=="" GOTO none
IF "%1"==".exe" GOTO exe
   type %GITHUB%\cmd\readme.md | findstr "\<`%1.*\.cmd`"
goto:eof 
 
:none
   more %GITHUB%\cmd\readme.md
goto:eof 
 
:exe
   dir /B %GITHUB%\cmd\*.exe
goto:eof