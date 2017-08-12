@echo off

:: vimdiff = gvim -d <file 1> <file 2> ... <file n>
setlocal

set _diff_args=%*
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set HOME=%_gvim_home%

@echo HOME: %HOME%
@echo diff: %_diff_args%

%_gvim_root%\gvim.exe -d %_diff_args%
endlocal
