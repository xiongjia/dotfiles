@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

%_aria2_root%\aria2c.exe --conf-path="%_aria2_conf%"
endlocal
