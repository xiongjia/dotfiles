@echo off

setlocal
set YDL_PROXY=%https_proxy%
_ydl.cmd %*
endlocal

