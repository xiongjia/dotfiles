@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd
Minecraft.exe
endlocal
