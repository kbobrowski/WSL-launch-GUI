# Launch Linux GUI application on Windows

Scripts to launch GUI applications / window managers installed on a Linux distribution from Windows Store.

Requires VcXsrv installed in %programfiles% (e.g. C:\Program Files\VcXsrv).

## Features

- checks if X server is running and automatically launches one
- option to hide windows cmd window

## Syntax

`run_app.bat app_to_lauch window_mode screen_number bash_path keep_cmd_window vcxsrv_executable`

Defaults:
- `app_to_launch:      xterm`
- `window_mode:        multiwindow`
- `screen_number:      0`
- `bash_path:          %systemroot%\system32\bash.exe`
- `keep_cmd_window:    false`
- `vcxsrv_executable:  vcxsrv.exe`

## Examples

It is convenient to create a shortcut to either run\_app.bat or run\_app\_no\_console.bat, with "Start in" parameter set to this repository directory and "Target" parameter specifying application to launch, e.g.:

- terminal application: `cmd /C %userprofile%\projects\WSL-launch-GUI\run_app_no_console.bat urxvt multiwindow 0`
- i3 on Ubuntu: `cmd /C %userprofile%\projects\WSL-launch-GUI\run_app_no_console.bat i3 nodecoration 1`
- mate on openSUSE: `cmd /C %userprofile%\projects\WSL-launch-GUI\run_app_no_console.bat mate-session nodecoration 2 %userprofile%\AppData\Local\Microsoft\WindowsApps\openSUSE-42.exe`

![i3](i3win.png)

![mate](matewin.png)

