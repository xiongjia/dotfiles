@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\local_proxy.cmd
call %_dev_env_libs%\dev_tools.cmd
set path=%_dev_path%;%path%
call %_dev_env_libs%\dbg_info.cmd

set HOME=%_emacs_home%
pushd %_emacs_wrk_dir%
%_emacs_bin% --insecure
popd
endlocal

