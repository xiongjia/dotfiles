@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set _start_app=cmake-gui.exe
set _start_args=%*
call %_dev_env_libs%\dev_start.cmd
endlocal

