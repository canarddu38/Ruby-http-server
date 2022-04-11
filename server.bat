@echo off

set path=C:\SERVER\server

mkdir C:\SERVER\server

copy server\* C:\SERVER\server

copy %0 C:\SERVER\

copy server-startup.bat C:\SERVER\

copy "start server.vbs" C:\SERVER\

copy "start server.vbs" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

cls

cd C:\SERVER

echo (if port is empty, the port will be 8080)
set /p port="Choose your port (int & max 4 chars): "

if (%port%) == () (
set port=8000
)

(echo %port%)>C:\SERVER\port

echo hosted at http://0.0.0.0:%port%

C:\Ruby31-x64\bin\ruby.exe -run -e httpd %path% -p %port%

pause
