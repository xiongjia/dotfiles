@echo off

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set _data_dir=%_storage_root%\youtube-dl
set _ext_args=%*
set _max_retry=2000
set _yget_bin=%_dropbox_root%\tools\you-get\you-get.exe

echo target:  %_data_dir%
node -pe "`YGET Begin: ${(new Date()).toString()}`"

set /a _tries=0
:YGET_RETRY
%_yget_bin% --no-proxy --output-dir %_data_dir% %_ext_args%
set _yget_exit=%errorlevel%
echo YGET Exit: %_yget_exit%; tries: %_tries%
if %_yget_exit%==0 goto YGET_END
set /a _tries+=1
node -pe "`YGET retry: ${(new Date()).toString()}`"
sleep 10
if %_tries% LEQ %_max_retry% ( goto YGET_RETRY ) else ( goto YGET_END )

:YGET_END
echo YGET End: tryies=%_tries%
node -pe "`YGET End: ${(new Date()).toString()}`"
endlocal
