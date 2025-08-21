@echo off
setlocal enabledelayedexpansion

:: Get console width
for /f "tokens=2 delims=:" %%A in ('mode con ^| findstr Columns') do set "cols=%%A"
set "cols=%cols: =%"

:: Read and center each line of logo.txt
for /f "delims=" %%L in (logo.txt) do (
    set "line=%%L"
    set "len=0"
    for /l %%I in (12,-1,0) do (
        set /a "len|=1<<%%I"
        for %%J in (!len!) do if "!line:~%%J,1!"=="" set /a "len&=~(1<<%%I)"
    )
    set /a "pad=(cols-len)/2"
    set "spaces="
    for /l %%S in (1,1,!pad!) do set "spaces=!spaces! "
    echo(!spaces!!line!
)
endlocal