@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

static -a 0.0.0.0 -p 8955 %_dropbox_root%\tools\webui-aria2

endlocal
