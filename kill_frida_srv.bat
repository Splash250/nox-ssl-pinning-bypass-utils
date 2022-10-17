for /f %%i in ('.\nox_adb.exe shell "netstat -nlp | grep :27042 | cut -d ' ' -f46 | cut -d '/' -f1"') do set VARIABLE=%%i
.\nox_adb.exe shell "kill -9 %VARIABLE%"
pause