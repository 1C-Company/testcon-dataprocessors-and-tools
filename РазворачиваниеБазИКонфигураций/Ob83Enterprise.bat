@echo off
set SCRIPT_DIR=%~dp0

set /p VERSION=<"%SCRIPT_DIR%platform_version.txt"

set V8Bin=C:\Program Files\1cv8\%VERSION%\bin

set BuildFolder=%cd%

start "" "%V8Bin%\1cv8.exe" enterprise /F"%~dp1"

exit /B 0
