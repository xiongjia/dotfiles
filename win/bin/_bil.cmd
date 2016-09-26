@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

:: check args
set _av_code=%1
set _part_num=%2
set _target_file=%3
@echo Usage: %%1 = av code; %%2 part num; %%3 = target file
if /I "%_av_code%" equ "" goto _Exit
if /I "%_part_num%" equ "" goto _Exit
if /I "%_target_file%" equ "" goto _Exit

@echo ================
@echo AV: %_av_code% [%_part_num%] to %_target_file%
set /P _are_you_sure=Are you sure (y/[n])?
if /I "%_are_you_sure%" neq "y" goto _Exit

set _biligrab_root=%_3rd_src_root%\Biligrab

:: Download the danmo to the .xml file
set _tmp_bil_xml=%_tmp_root%\_biligrab_xml_%time::=.%_tmp
@echo download the res to %_tmp_bil_xml%

:: disable proxy
set http_proxy=
set https_proxy=
set no_proxy=*
python %_biligrab_root%\biligrablite-re.py %_av_code% %_part_num% "%_tmp_bil_xml%"

:: Create the .ass file from the xml
@echo convert the res to ass
set _tmp_bil_xml_src=%_tmp_bil_xml%.xml
python %_biligrab_root%\danmaku2ass2.py ^
       -o "%_storage_root%\youtube-dl\%_target_file%.ass" ^
       -dm 15 -s 1024x768 "%_tmp_bil_xml_src%"

del "%_tmp_bil_xml_src%"
:_Exit
endlocal
