@echo off
pip install frida-tools
frida --version
pip install objection

powershell -Command "Invoke-WebRequest https://github.com/Splash250/nox-ssl-pinning-bypass-utils/blob/remote_files/frida-server?raw=true -OutFile frida-server"

cls
.\nox_adb.exe push .\frida-server /data/local/tmp

.\nox_adb.exe shell "chmod 777 /data/local/tmp/frida-server"

pause