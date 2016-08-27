@echo off

:: start jekyll server
setlocal
:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set _jk_serv_home=%_github_root%\xiongjia.github.com
pushd %_jk_serv_home%
jekyll server --watch --draft
popd
endlocal

