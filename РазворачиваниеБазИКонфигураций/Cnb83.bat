@echo off

rem echo ---------------------------------------------------
setlocal
rem chcp 1251
rem echo ---------------------------------------------------

set V8Bin=C:\Program Files\1cv8\8.3.18.1741\bin

rem set BuildFolder=%cd%

echo ---------------------------------------------------
:RestoreIB
echo Запустить загрузку файла конфигурации
echo %~dp1
start "" /wait "%V8Bin%\1cv8.exe" CREATEINFOBASE File="%~dp1"
start "" /wait "%V8Bin%\1cv8.exe" config /F"%~dp1" /LoadCfg"%~f1"

if not exist "%~dp1\1cv8.1cd" goto :RestoreIBError
if NOT ERRORLEVEL 1 goto :StartBase
:RestoreIBError
echo Загрузка файла конфигурации завершена
pause
exit /B 2

:StartBase
echo ---------------------------------------------------
start "" "%V8Bin%\1cv8.exe" config /F"%~dp1"

exit /B 0
