@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

call %_dropbox_root%\tools\cygwin\Cygwin.bat

endlocal

