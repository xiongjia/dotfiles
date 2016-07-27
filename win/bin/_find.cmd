@echo off

:: gnu win32 find
setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set find_args=%*
%_gnu_w32%\bin\find.exe %find_args%
endlocal

