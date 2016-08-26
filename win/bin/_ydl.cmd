@echo off

:: python -m youtube_dl
::   -o %(title)s-%(autonumber)s.%(ext)s
::   <https://youtuble.com/????>
:: or 
::   -o "%(title)s-%(id)s.%(ext)s"

setlocal
set _dev_env_libs=%~dp0.\..\lib
call %_dev_env_libs%\settings.cmd

set YDL_HOME=%_3rd_src_root%\youtube-dl
set YDL_FMT=%%(title)s-%%(autonumber)s.%%(ext)s
set YDL_DAT=%_storage_root%\youtube-dl
set YDL_EXT_ARGS=%*
set PYTHONPATH=%YDL_HOME%;%PYTHONPATH%
if not defined YDL_MAX_RETRY (
  set YDL_MAX_RETRY=infinite
)
if defined YDL_PROXY (
  set YDL_EXT_ARGS=--proxy %YDL_PROXY% %YDL_EXT_ARGS%
)

echo YDL SRC:       %YDL_EXT_ARGS%
echo YDL target:    %YDL_DAT%\%YDL_FMT%
echo YDL Proxy:     %YDL_PROXY%
echo YDL Max retry: %YDL_MAX_RETRY%
echo YDL Ext args:  %YDL_EXT_ARGS%
echo YDL PY Path:   %PYTHONPATH%

python -m youtube_dl -R %YDL_MAX_RETRY% -o %YDL_DAT%\%YDL_FMT% %YDL_EXT_ARGS%
set YDL_EXIT=%errorlevel%
echo YDL Exit: %YDL_EXIT%
endlocal

