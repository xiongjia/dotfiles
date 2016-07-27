@echo off

:: vimdiff = gvim -d <file 1> <file 2> ... <file n>
setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set HOME=%_gvim_home%
set diff_args=%*
echo %diff_args%
%_gvim_root%\gvim.exe -d %diff_args%
endlocal

