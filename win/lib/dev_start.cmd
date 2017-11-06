@echo off

:: import libraries
set _dev_env_libs=%~dp0.
call %_dev_env_libs%\local_proxy.cmd
call %_dev_env_libs%\dev_tools.cmd
call %_dev_env_libs%\dev_tmp.cmd
set path=%_dev_path%;%path%
call %_dev_env_libs%\dbg_info.cmd

if "%_start_home%" == "" (
    @echo no _start_home
) else (
    set HOME=%_start_home%
)

set _dbg=true
if "%_dbg%" == "true" (
    @echo start app:  %_start_app%
    @echo start args: %_start_args%
    @echo wrk dir:    %_start_wrk_dir%
    @echo home dir:   %HOME%
)

if "%_start_wrk_dir%" == "" (
  pushd %_start_wrk_dir%
  start %_start_app% %_start_args%
  popd
) else (
  start %_start_app% %_start_args%
)
