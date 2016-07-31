@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set HOME=%_gvim_home%
set _start_app=%_gvim_root%\gvim.exe
set _start_args=%*
if "%_start_args%" == "" (
  set _start_wrk_dir=%_gvim_wrk_dir%
) else (
  set _start_args=--remote-tab-silent %_start_args%
)
call %_dev_env_libs%\dev_start.cmd
endlocal

