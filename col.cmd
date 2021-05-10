@echo off
setlocal EnableDelayedExpansion

set colour1=[38;2;128;32;192m
set colour2=[38;5;208m

echo %colour1%---%colour2% ESC[XXm %colour1%---[0m
@REM dark background
set str=
for /l %%c in (30,1,37) do (
    set label=  %%c
    set str=!str![%%cm !label:~-3! 
)
echo !str![0m
@REM bright background
set str=
for /l %%c in (90,1,97) do (
    set label=  %%c
    set str=!str![%%cm !label:~-3! 
)
echo !str![0m
@REM dark foreground
set str=
for /l %%c in (40,1,47) do (
    set label=  %%c
    set str=!str![%%cm !label:~-3! 
)
echo !str![0m
@REM bright foreground
set str=
for /l %%c in (100,1,107) do (
    set label=  %%c
    set str=!str![%%cm !label:~-3! 
)
echo !str![0m

echo.
echo %colour1%---%colour2% ESC[1;XXm %colour1%---[0m
@REM bold dark foreground
set str=
for /l %%c in (30,1,37) do (
    set label=  %%c
    set str=!str![1;%%cm !label:~-3! 
)
echo !str![0m
@REM bold bright foreground
set str=
for /l %%c in (90,1,97) do (
    set label=  %%c
    set str=!str![1;%%cm !label:~-3! 
)
echo !str![0m

echo.
echo %colour1%---%colour2% ESC[38;5;XXm %colour1%---[0m
@REM dark foreground
set str=
for /l %%c in (0,1,7) do (
    set label= %%c
    set str=!str![38;5;%%cm !label:~-2! 
)
echo !str![0m
@REM bright foreground
set str=
for /l %%c in (8,1,15) do (
    set label= %%c
    set str=!str![38;5;%%cm !label:~-2! 
)
echo !str![0m
@REM colour cube foreground
set str=
for /l %%g in (0,1,5) do (
    for /l %%r in (0,1,5) do (
        for /l %%b in (0,1,5) do (
            set /a val=16 + %%r * 36 + %%g * 6 + %%b
            set label=  !val!
            set str=!str![38;5;!val!m!label:~-3!
        )
        set str=!str![0m 
    )
    echo !str!
    set str=
)
@REM greyscale foreground
for /l %%c in (232,1,255) do (
    set label=  %%c
    set str=!str![38;5;%%cm !label:~-3! 
)
echo !str![0m

echo.
echo %colour1%---%colour2% ESC[48;5;XXm %colour1%---[0m
@REM dark background
set str=
for /l %%c in (0,1,7) do (
    set label= %%c
    set str=!str![48;5;%%cm !label:~-2! 
)
echo !str![0m
@REM bright background
set str=
for /l %%c in (8,1,15) do (
    set label= %%c
    set str=!str![48;5;%%cm !label:~-2! 
)
echo !str![0m
@REM colour cube background
set str=
for /l %%g in (0,1,5) do (
    for /l %%r in (0,1,5) do (
        for /l %%b in (0,1,5) do (
            set /a val=16 + %%r * 36 + %%g * 6 + %%b
            set label=  !val!
            set str=!str![48;5;!val!m!label:~-3!
        )
        set str=!str![0m 
    )
    echo !str!
    set str=
)
@REM greyscale background
for /l %%c in (232,1,255) do (
    set label=  %%c
    set str=!str![48;5;%%cm !label:~-3! 
)
echo !str![0m

echo.
echo %colour1%---%colour2% ESC[38;2;XXX;XXX;XXXm %colour1%---[0m
@REM RGB colour cube foreground
set str=
for /l %%i in (0,32,255) do (
    for /l %%j in (0,32,255) do (
        for /l %%k in (0,32,255) do (
            set label=      %%i;%%j;%%k
            set str=!str![38;2;%%i;%%j;%%km !label:~-11! 
        )
        echo !str![0m
        set str=
    )
)

echo.
echo %colour1%---%colour2% ESC[48;2;XXX;XXX;XXXm %colour1%---[0m
@REM RGB colour cube background
set str=
for /l %%i in (0,32,255) do (
    for /l %%j in (0,32,255) do (
        for /l %%k in (0,32,255) do (
            set label=      %%i;%%j;%%k
            set str=!str![48;2;%%i;%%j;%%km !label:~-11! 
        )
        echo !str![0m
        set str=
    )
)