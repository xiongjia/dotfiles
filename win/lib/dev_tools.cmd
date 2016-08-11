@echo off

call %~dp0.\settings.cmd
set _dev_bin=%~dp0.\..\bin
set _dev_path=%_dev_bin%

:: utils
set _dev_path=%_gnu_w32%\bin;%_dev_path%
set _dev_path=%_choco_root%\bin;%_dev_path%
set _dev_path=%_sys_internal%;%_dev_path%
set _dev_path=%_platinum_searcher%;%_dev_path%
set _dev_path=%_gvim_root%;%_dev_path%
set _dev_path=%_gnu_global%\bin;%_dev_path%
set _dev_path=%_putty_root%;%_dev_path%

:: emacs
set _dev_path=%_emacs_root%\bin;%_dev_path%
if defined _proxy_host (
  set EMACS_HTTPS_PROXY=%_proxy_host%:%_proxy_port%
  set EMACS_HTTP_PROXY=%_proxy_host%:%_proxy_port%
)

:: Java / Scala
set JAVA_HOME=%_jdk_home%
set M2_HOME=%_m2_home%
set M2=%_m2_home%\bin
set MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=128M
set GRADLE_USER_HOME=%_gradle_home%
set _dev_path=%_jdk_home%\bin;%_scala_home%\bin;%_dev_path%
set _dev_path=%_ant_home%\bin;%_m2_home%\bin;%_gradle_home%\bin;%_dev_path%
set _dev_path=%_sbt_home%\bin;%_dev_path%
set _dev_path=%_aspell%\bin;%_dev_path%

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

:: ruby
set RUBYOPT=-Ku
set _dev_path=%_ruby_home%\bin;%_ruby_devkit%;%_dev_path%

:: git
set _dev_path=%_git_home%\cmd;%_dev_path%
set GIT_SSH=%_dev_bin%\_plink_git.cmd

:: python
set _dev_path=%_py2_home%;%_dev_path%
set _dev_path=%_py2_home%\Scripts;%_dev_path%

:: c/c++
set BOOSTROOT=%_boost_root%
set _dev_path=%_ms_win_dbg_64%;%_ms_depends_64%;%_dev_path%
set _dev_path=%_cmake_root%\bin;%_dev_path%
set _NT_SYMBOL_PATH=SRV*%_ms_sym_cache%*http://msdl.microsoft.com/download/symbols

