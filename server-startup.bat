@echo off

set path=C:\SERVER\server

for /f "delims=" %%x in (C:\SERVER\port) do set port=%%x

echo %port%

cls

cd C:\SERVER

echo hosted at http://0.0.0.0:%port%

C:\Ruby31-x64\bin\ruby.exe -run -e httpd %path% -p %port%

pause
