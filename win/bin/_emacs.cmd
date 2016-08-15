@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set HOME=%_emacs_home%
@echo Emacs HOME: %HOME%
set _start_app=%_emacs_bin%
set _start_args=--insecure %*
if "%_emacs_args%" == "" ( set _start_wrk_dir=%_emacs_wrk_dir% )
call %_dev_env_libs%\dev_start.cmd
endlocal

