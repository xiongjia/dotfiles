@echo off

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\local_proxy.cmd
call %_dev_env_libs%\dev_tools.cmd
call %_dev_env_libs%\dev_tmp.cmd
set path=%_dev_path%;%path%
set prompt=[$p]$_(dev) $t $+$g

call %_dev_env_libs%\dbg_info.cmd

