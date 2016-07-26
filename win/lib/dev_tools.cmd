@echo off

:: dev tools
set _git_home=D:\usr\misc\git\git-2.8.1
set _dev_path=


:: Git
set _dev_path=%_git_home%\cmd;%_dev_path%

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

