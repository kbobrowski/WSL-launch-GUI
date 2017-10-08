@echo off

set xsrvexec=%1
set dispnum=%2
set windowmode=%3

start "Xserver" /D "%programfiles%\VcXsrv" %xsrvexec% :%dispnum% -ac -terminate -lesspointer -%windowmode% -clipboard -wgl

exit