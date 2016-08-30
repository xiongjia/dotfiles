@echo off

setlocal

:: import libraries
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\dev_tools.cmd

:: check args
set _src_root=%1
set _concat_files=%2
set _target_file=%3
echo Usage: %%1 = src root; %%2 src files; %%3 = target file
if /I "%_concat_files%" equ "" goto _Exit
if /I "%_target_file%" equ "" goto _Exit

set _target_full_filename=%_storage_root%\ffmpeg_out\%_target_file%

@echo src: %_concat_files%
@echo target: %_target_full_filename%

:: Create the src files list
set _tmp_src_list=%_tmp_root%\_ffmpeg_concat_%time::=.%.list
(for %%i in (%_concat_files%) do @echo file '%_src_root%\%%i') > %_tmp_src_list%
@echo src file list: %_tmp_src_list%
@echo off
cat %_tmp_src_list%
@echo ================
set /P _are_you_sure=Are you sure (y/[n])?
if /I "%_are_you_sure%" NEQ "y" goto _End

@echo starting ffmpeg concat
@echo off
ffmpeg -safe 0 -f concat -i %_tmp_src_list% -c copy %_target_full_filename%

:_End
del %_tmp_src_list%

:_Exit
endlocal
