@echo off

call %~dp0.\settings.cmd
set _dev_bin=%~dp0.\..\bin
set _dev_path=%_dev_bin%
set _deps_root=%~dp0.\..\..\deps

:: update utf8
:: @chcp 65001

:: utils
set _dev_path=%_gnu_w32%\bin;%_dev_path%
set _dev_path=%_choco_root%\bin;%_dev_path%
set _dev_path=%_sys_internal%;%_dev_path%
set _dev_path=%_platinum_searcher%;%_dev_path%
set _dev_path=%_gvim_root%;%_dev_path%
set _dev_path=%_gnu_global%\bin;%_dev_path%
set _dev_path=%_putty_root%;%_dev_path%
set _dev_path=%_chrome_root%;%_dev_path%
set _dev_path=%_curl_root%;%_dev_path%
set _dev_path=%_gnuplot%\bin;%_dev_path%
set _gnuplot_cli=%_gnuplot%\bin\pgnuplot.exe
set _dev_path=%_ffmpeg%\bin;%_dev_path%
set _dev_path=%_graphics_magick%;%_dev_path%
set _dev_path=%_hg_root%;%_dev_path%
set _dev_path=%_atom_cli%;%_dev_path%
set _dev_path=%_heroku_root%\bin;%_dev_path%
set _dev_path=%_dropbox_root%\tools\dos2unix\bin;%_dev_path%

:: gpg
set _dev_path=%_gpg_root%;%_dev_path%
set _gpg_program=gpg2
set _gpg_home=%_gpg_root%\home

:: emacs
set _dev_path=%_emacs_root%\bin;%_dev_path%
set _emacs_browser=%_dev_bin%\_chrome.cmd

:: vim
set _gvim_home=%_github_root%\dotFiles\vim

:: Java / Scala
set JAVA_HOME=%_jdk_home%
set M2_HOME=%_m2_home%
set M2=%_m2_home%\bin
set MAVEN_OPTS=-Xmx1024m -XX:MaxPermSize=128M
set GRADLE_USER_HOME=%_gradle_usr_home%
set _dev_path=%_jdk_home%\bin;%_scala_home%\bin;%_dev_path%
set _dev_path=%_ant_home%\bin;%_m2_home%\bin;%_gradle_home%\bin;%_dev_path%
set _dev_path=%_sbt_home%\bin;%_dev_path%
set _dev_path=%_aspell%\bin;%_dev_path%
set _dev_path=%_rsync_root%;%_dev_path%

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
set _node_tern_cli=%_npm_prefix%\node_modules\tern\bin\tern

:: ruby
set RUBYOPT=-Ku
set _dev_path=%_ruby_home%\bin;%_ruby_devkit%;%_dev_path%

:: git
set _dev_path=%_git_home%\cmd;%_dev_path%
set _dev_path=%_deps_root%\depot_tools;%_dev_path%
set GIT_SSH=%_dev_bin%\_plink_git.cmd

:: python
set _dev_path=%_py2_home%;%_dev_path%
set _dev_path=%_py2_home%\Scripts;%_dev_path%

:: c/c++
set BOOSTROOT=%_boost_root%
set _dev_path=%_ms_win_dbg_64%;%_ms_depends_64%;%_dev_path%
set _dev_path=%_cmake_root%\bin;%_dev_path%
set _NT_SYMBOL_PATH=SRV*%_ms_sym_cache%*http://msdl.microsoft.com/download/symbols
set _dev_path=%_llvm_root%\bin;%_dev_path%
set OPENSSL_ROOT_DIR=%_openssl_root%

:: Minecraft
set _dev_path=%_mc_root%\client;%_dev_path%

:: Aria2
set _aria2_root=%_dropbox_root%\tools\aria2\aria2-1.27.1
set _aria2_conf=%_dropbox_root%\tools\aria2\aria2_home.conf

:: Database
set _dev_path=%_dev_path%;%_pg_root%\bin;%_pg_admin_root%\bin
set db_store_sqlite=%_db_store%\sqlite
