@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\local_proxy.cmd
call %_dev_env_libs%\dev_tools.cmd
call %_dev_env_libs%\dev_tmp.cmd
set path=%_dev_path%;%path%
call %_dev_env_libs%\dbg_info.cmd

set HOME=%_emacs_home%
set _emacs_args=%*

if "%_emacs_args%" == "" (
  pushd %_emacs_wrk_dir%
  start %_emacs_bin% --insecure
  popd
) else (
  start %_emacs_bin% --insecure %_emacs_args%
)
endlocal

