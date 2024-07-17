@echo off

set "sourceFile=FemboyV3.luac"
set "sourceFolder=FemboyFiles"
set "destination=%appdata%\popstardevs\2take1menu\scripts"

if not exist "%destination%" (
    mkdir "%destination%"
)

if exist "%sourceFile%" (
    move "%sourceFile%" "%destination%"
) else (
    echo File "%sourceFile%" not found.
)

if exist "%sourceFolder%" (
    move "%sourceFolder%" "%destination%"
) else (
    echo Folder "%sourceFolder%" not found.
)

echo Operation completed.
pause