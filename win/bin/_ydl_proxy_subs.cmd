@echo off

setlocal
set YDL_PROXY=%https_proxy%

:: examples:
::  get all lang subs
::    `--all-subs --write-auto-sub --skip-download  <youtube link>`
::  get enu + chinese simple traditional
::    `--sub-lang en,zh-Hans,zh-Hant --write-auto-sub --skip-download  <youtube link>`

_ydl.cmd --sub-lang en,zh-Hans,zh-Hant --write-auto-sub --skip-download  %*

endlocal

