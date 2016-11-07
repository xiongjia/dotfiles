@echo off

setlocal

:: check args
set _dest_db_name=%1
@echo Usage: %%1 = new db name
if /I "%_dest_db_name%" equ "" goto _Exit

set _dest_db_store=%_db_store%\%_dest_db_name%

@echo ================
@echo db name: %_dest_db_name% 
@echo db store: %_dest_db_store%
set /P _are_you_sure=Are you sure (y/[n])?
if /I "%_are_you_sure%" neq "y" goto _Exit

:: create the pg db cluster
initdb -D "%_dest_db_store%" ^
    -U root -E utf8 --locale="C" -W

:_Exit
endlocal

