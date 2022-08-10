@echo off
set V8Bin=C:\Program Files\1cv8\8.3.18.1741\bin

set BuildFolder=%cd%

start "" "%V8Bin%\1cv8.exe" enterprise /F"%~dp1"

exit /B 0
