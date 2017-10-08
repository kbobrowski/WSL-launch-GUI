@echo off

set command=%1
set windowmode=%2
set dispnum=%3
set bash=%4
set pause=%5
set vcxsrvexec=%6

IF "%command%"=="" (
  set command=xterm
)

IF "%windowmode%"=="" (
  set windowmode=multiwindow
)

IF "%pause%"=="" (
  set pause=false
)

IF "%dispnum%"=="" (
  set dispnum=0
)

IF "%bash%"=="" (
  set bash=%systemroot%\system32\bash.exe
)

IF "%vcxsrvexec%"=="" (
  set vcxsrvexec=vcxsrv.exe
)

set disp=localhost:%dispnum%.0
set pth=%cd%\launch_xsrv.bat %vcxsrvexec% %dispnum% %windowmode%
set pth=%pth:\=\\\\%

%bash% -c "export DISPLAY=%disp% && if ! xdpyinfo -display %disp% > /dev/null 2>&1; then /mnt/c/Windows/System32/cmd.exe /C %pth%; fi; %command%"

IF %pause%==true (
  pause
)

exit