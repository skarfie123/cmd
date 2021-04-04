@echo off
setlocal ENABLEDELAYEDEXPANSION

IF "%1"=="" GOTO none
IF "%1"==".desc" GOTO desc
   type %userprofile%\venv\%1.desc
goto:eof

:none
   FOR /F "tokens=*" %%V IN ('dir /B /AD %userprofile%\venv') DO (
      if exist %userprofile%\venv\%%V.desc (
         for /f "delims=" %%D in (%userprofile%\venv\%%V.desc) do set DESC=%%D
      ) else (
         set DESC=
      )
      echo [95m%%V[0m !DESC!
   )
goto:eof 
 
:desc
   dir /B %userprofile%\venv\*.desc
goto:eof