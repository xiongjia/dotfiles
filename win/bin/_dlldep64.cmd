@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set _start_app=%_ms_depends_64%\depends.exe
set _start_args=%*
call %_dev_env_libs%\dev_start.cmd
endlocal

