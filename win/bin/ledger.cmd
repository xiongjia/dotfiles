@echo off

:: ledger windows version is base on cygwin.
:: In this cmd, we need updete all file name to cygwin path.
:: Example:
::   ledger -f "c:/sample.txt" bal
::   =>>
::   ledger -f "/cygdrive/c/sample.txt" bal

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set _ledger_bin=%_ledger_root%\ledger_bin.exe
set _ledger_args=%*

:: node.js script for string replacement
:: process.env['_ledger_args'].replace(/\\/g, '/')
::   .replace(/-f \"(.):\//g, '-f \"/cygdrive/\$1/');
set _str_rep=process.env['_ledger_args'].replace(/\\/g, '/').replace(/-f \"(.):\//g, '-f \"/cygdrive/\$1/');
set _tmp_cmd=%_tmp_root%\_ledger_cmd_%time::=.%_tmp
node -pe "%_str_rep%" > "%_tmp_cmd%"
set /p _new_args=<"%_tmp_cmd%"
del "%_tmp_cmd%"

%_ledger_bin% %_new_args%
endlocal

