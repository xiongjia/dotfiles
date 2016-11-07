@echo off

setlocal

:: check args
set _dest_db_name=%1
set _ctl_cmd=%2
@echo Usage: %%1 = db name
if /I "%_dest_db_name%" equ "" goto _Exit
if /I "%_ctl_cmd%" equ "" goto _Exit

set _dest_db_store=%_db_store%\%_dest_db_name%
set _dest_db_log=%_dest_db_store%\%_dest_db_name%.log

@echo ================
@echo db name: %_dest_db_name% 
@echo db store: %_dest_db_store%
@echo ctl cmd: %_ctl_cmd%
@echo log file: %_dest_db_log%
set /P _are_you_sure=Are you sure (y/[n])?
if /I "%_are_you_sure%" neq "y" goto _Exit

if "%_ctl_cmd%" == "start" (
  pg_ctl start -D "%_dest_db_store%" -l "%_dest_db_log%" -w
)

if "%_ctl_cmd%" == "stop" (
  pg_ctl stop -D "%_dest_db_store%" -w -m smart 
)

if "%_ctl_cmd%" == "status" (
  pg_ctl status -D "%_dest_db_store%" -w
)

:_Exit
endlocal
