@echo on 
if "%~1"=="" (
    echo Please provide zip file
    exit /b 1
)
if "%~2"=="" (
    set folder="%~n1"
) else (
    set folder=%2
)
set zip=%~f1
set current=%cd%
md %folder%
cd %folder%
call extracth "%zip%"
cd %current%