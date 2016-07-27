@echo off

:: plink for git 
:: In git 2.x +, '-p' is port number but putty option is '-P'.

setlocal
set _dev_env_libs=%~dp0\..\lib
call %_dev_env_libs%\settings.cmd

:: Update the SSH args (replease '-p ' to '-P ')
set ssh_args=%*
set plink_args=%ssh_args:-p =-P %

:: launch the plink with the new args
%_putty_root%\plink.exe %plink_args%
endlocal

