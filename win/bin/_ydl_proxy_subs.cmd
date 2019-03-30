@echo off

setlocal
set YDL_PROXY=http://%_proxy_host%:%_proxy_port%

:: examples:
::  get all lang subs
::    `--all-subs --write-auto-sub --skip-download  <youtube link>`
::  get enu + chinese simple traditional
::    `--sub-lang en,zh-Hans,zh-Hant --write-auto-sub --skip-download  <youtube link>`

_ydl.cmd --sub-lang en,zh-Hans,zh-Hant --write-auto-sub --skip-download  %*

endlocal

