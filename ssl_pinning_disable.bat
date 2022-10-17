@echo off
start /min "" "start_frida_srv.bat"
timeout 2 > NUL
frida-ps -Uai
set /p "id=Enter app identifier: "
objection -g %id% explore --startup-command "android sslpinning disable"

pause