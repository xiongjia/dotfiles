@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set _biligrab_root=%_3rd_src_root%\Biligrab

for %%i in ("%_storage_root%\youtube-dl\*.cmt.xml") do (
    echo xml -> ass %%i
    python %_biligrab_root%\danmaku2ass2.py ^
           -o "%%i.ass" -dm 15 -s 1024x768 "%%i"
)

endlocal
