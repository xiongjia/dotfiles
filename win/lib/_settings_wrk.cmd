@echo off

:: All settings (wrk)

:: misc
set _tmp_root=C:\wrk\cache\tmp
set _storage_root=C:\wrk\data\dev-tmp
set _dropbox_root=
set _onedrv_root=C:\Users\xiongjia_le\OneDrive
set _github_root=C:\wrk\github
set _3rd_src_root=C:\wrk\stuff
set _chrome_root="C:\Program Files\Google\Chrome\Application"
set _curl_root=C:\tools\curl\curl-7.79.1\bin
set _rsync_root=
set _mc_root=
set HOME=C:\wrk\github\dotfiles\vim
set USERPROFILE=C:\wrk\github\dotfiles\vim

:: Proxy
set _proxy_host=localhost
set _proxy_port=8082
set _no_proxy=localhost,127.0.0.1
set _no_proxy=%_no_proxy%,registry.npm.taobao.org
set _no_proxy=%_no_proxy%,cdn.npm.taobao.org,npm.taobao.org
set _no_proxy=%_no_proxy%,github.com

:: dev tools
set _git_home=C:\tools\git\git-2.33.1
set _gnu_w32=C:\tools\gnu_w32

:: golang
set _go_root=C:\tools\golang\go1.11.1
set _go_path=D:\dat\go-path

:: perl
set _perl_home=

:: node.js
set _node=C:\tools\node\node-v13
set _npm=C:\tools\node\npm-v6.4.1
set _npm_prefix=C:\tools\node\node_cache\npm_prefix
set NPM_CONFIG_USERCONFIG=C:\tools\node\node_cache\npm_conf\npmrc

:: c/c++
set _boost_root=
set _cmake_root=
set _ms_sym_cache=C:\wrk\data\ms_sym
set _ms_win_dbg_32=C:\tools\windbg\windbg_x86
set _ms_win_dbg_64=C:\tools\windbg\windbg_x64
set _ms_depends_32=
set _ms_depends_64=
set _llvm_root=

:: python
set _py2_home=C:\tools\py\py27
set _py2_venv=
set _py3_home=C:\tools\py\py3.7.0
set _py3_venv=

:: java
set _jdk_home=C:\tools\java\jdk\jdk8.0.172
set _scala_home=
set _m2_home=C:\tools\java\maven\apache-maven-3.8.3
set _gradle_home=C:\tools\java\gradle\gradle-5.0
set _gradle_usr_home=C:\tools\java\gradle\gradle_home
set _sbt_home=
set _ant_home=

:: ruby
set _ruby_home=
set _ruby_devkit=

:: vim
set _gvim_root=C:\tools\vim\vim80
set _gvim_home=c:\wrk\github\dotfiles\vim
set _gvim_wrk_dir=c:\wrk

:: emacs
set _emacs_wrk_dir=
set _emacs_root=
set _emacs_bin=%_emacs_root%\bin\runemacs.exe
set _emacs_home=C:\wrk\src\github\dotfiles\emacs
set _emacs_https_proxy=localhost:1095
set _emacs_http_proxy=localhost:1095
set _emacs_tools=

:: tools
set _putty_root=C:\tools\putty\putty-0.70
set _choco_root=
set _sys_internal=C:\tools\sysinternals
set _platinum_searcher=
set _gnu_global=
set _aspell=
set _gnuplot=
set _ffmpeg=
set _gpg_root=
set _ledger_root=
