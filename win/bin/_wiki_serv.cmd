@echo off

:: start wiki server
setlocal
:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

set _wiki_serv_home=%_github_root%\abathur
pushd %_wiki_serv_home%
npm run serv
popd
endlocal
