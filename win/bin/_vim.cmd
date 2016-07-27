@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\local_proxy.cmd
call %_dev_env_libs%\dev_tools.cmd
set path=%_dev_path%;%path%
call %_dev_env_libs%\dbg_info.cmd

set HOME=%_gvim_home%
set _vim_args=%*

if "%_vim_args%" == "" (
  pushd %_gvim_wrk_dir%
  start %_gvim_root%\gvim.exe
  popd
) else (
  start %_gvim_root%\gvim.exe --remote-tab-silent %_vim_args%
)
endlocal

