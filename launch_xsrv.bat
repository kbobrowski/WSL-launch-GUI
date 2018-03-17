@echo off

set xsrvexec=%1
set dispnum=%2
set windowmode=%3

:start
tasklist /FI "IMAGENAME eq VcXsrv.exe" 2>NUL | Find /I /N "VcXsrv.exe" > NUL 
if %errorlevel%==0 goto end 
start "Xserver" /D "%programfiles%\VcXsrv" %xsrvexec% :%dispnum% -ac -terminate -lesspointer -%windowmode% -clipboard -wgl
echo starting server 
goto exit
:end
goto exit
:exit
exit
