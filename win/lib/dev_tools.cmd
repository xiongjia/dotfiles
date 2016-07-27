@echo off

call %~dp0\.\settings.cmd
set _dev_bin==%~dp0\..\bin
set _dev_path=%_dev_bin%

:: utils (git; gun win32)
set _dev_path=%_gnu_w32%\bin;%_dev_path%

:: Java / Scala
if defined _proxy_host (
  set _java_proxy_opts=-Dhttp.proxyHost=%_proxy_host% ^
    -Dhttp.proxyPort=%_proxy_port% ^
    -Dhttps.proxyHost=%_proxy_host% -Dhttps.proxyPort=%_proxy_port%
)

if defined _java_proxy_opts (
  set SCALA_OPTS=%SCALA_OPTS% %_java_proxy_opts%
  set ANT_OPTS=%ANT_OPTS% %_java_proxy_opts%
)

:: golang
set GOROOT=%_go_root%
set GOPATH=%_go_path%
set _dev_path=%GOROOT%\bin;%GOPATH%\bin;%_dev_path%

:: perl
set _dev_path=%_perl_home%\bin;%_dev_path%

:: node.js
set _dev_path=%_npm_prefix%;%_node%;%_npm%;%_dev_path%

:: git
set _dev_path=%_git_home%\cmd;%_dev_path%
set GIT_SSH=%_dev_bin%\_plink_git.cmd

