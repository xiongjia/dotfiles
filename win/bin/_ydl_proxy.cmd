@echo off

setlocal
set YDL_PROXY=http://%_proxy_host%:%_proxy_port%

_ydl.cmd %*
endlocal

