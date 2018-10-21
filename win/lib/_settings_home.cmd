@echo off

:: All settings (home)

:: misc
set _tmp_root=D:\tmp\dev_tmp
set _storage_root=D:\dat\arch
set _dropbox_root=C:\Users\lexj\Dropbox
set _onedrv_root=D:\var\OneDrive
set _github_root=D:\var\dev\github
set _3rd_src_root=D:\var\dev\stuff
set _chrome_root="C:\Program Files (x86)\Google\Chrome\Application"
set _curl_root=D:\usr\misc\curl
set _rsync_root=D:\usr\misc\DeltaCopyRaw
set _mc_root=F:\game\mc
set HOME=D:\var\dev\github\dotfiles\vim
set USERPROFILE=D:\var\dev\github\dotfiles\vim

:: Proxy
set _proxy_host=192.168.1.37
set _proxy_port=8082
set _no_proxy=localhost,127.0.0.1
set _no_proxy=%_no_proxy%,registry.npm.taobao.org
set _no_proxy=%_no_proxy%,cdn.npm.taobao.org,npm.taobao.org
set _no_proxy=%_no_proxy%,repo.maven.apache.org

:: dev tools
set _git_home=D:\app\git\git-2.18.0
set _gnu_w32=D:\app\gnu_w32
set _ms_dev=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\IDE\devenv.exe

:: golang
set _go_root=D:\app\go\go1.10.3
set _go_path=D:\var\dev\gopath

:: perl
set _perl_home=C:\strawberry\perl

:: node.js
set _node=D:\app\node\node-v10.9.0
set _npm=D:\app\node\node-v10.9.0
set _npm_prefix=D:\var\dev\github\dotfiles\vim\npm-prefix

:: c/c++
set _boost_root=E:\dev\third_party\boost\boost_1_61_0
set _cmake_root=D:\app\cmake\cmake-3.12.1
set _ms_sym_cache=E:\dev\sym.cache\ms
set _ms_win_dbg_32=D:\usr\misc\windbg\windbg_x86
set _ms_win_dbg_64=D:\usr\misc\windbg\windbg_x64
set _ms_depends_32=D:\usr\misc\depends22\depends22_x86
set _ms_depends_64=D:\usr\misc\depends22\depends22_x64
set _llvm_root=D:\usr\misc\llvm
set _openssl_root=E:\dev\stuff\dist\openssl-prefix

:: python
set _py2_home=D:\app\py\Python27
set _py2_venv=D:\app\py\venv\py2-dev

set _py3_home=D:\app\py\python36
set _py3_venv=D:\app\py\venv\py3-dev

:: java
set _jdk8_home=D:\app\java\jdk\jdk8.0.172
set _jdk10_home=D:\app\java\jdk\jdk10.0.2
set _jdk11_home=D:\app\java\jdk\jdk11.0.1
set _jdk_home=%_jdk11_home%
set _scala_home=E:\dev\java_env\scala\scala-2.12.0
set _m2_home=D:\var\dev\m2
set _gradle_home=D:\app\java\gradle\gradle-4.9
set _gradle_usr_home=D:\var\dev\gradle_home
set _sbt_home=E:\dev\java_env\scala\sbt-0.13.9\sbt
set _ant_home=D:\app\java\ant\apache-ant-1.10.5

:: ruby
set _ruby_home=D:\app\rb\ruby25-x64
set _ruby_devkit=D:\app\rb\ruby25-x64\msys64

:: vim
set _gvim_root=D:\app\vim\vim80
set _gvim_wrk_dir=D:\var\dev

:: atom
set _atom_root=D:\usr\misc\atom
set _atom_cli=%_atom_root%\resources\cli

:: emacs
set _emacs_wrk_dir=E:\dev
set _emacs_root=D:\app\emacs\emacs-w64-25.3
set _emacs_bin=%_emacs_root%\bin\runemacs.exe
set _emacs_home=D:\var\dev\github\dotfiles\emacs
set _emacs_https_proxy=
set _emacs_http_proxy=
set _emacs_tools=C:\Users\lexj\Dropbox\tools\emacs

:: tools
set _putty_root=D:\usr\misc\putty-0.62
set _choco_root=C:\ProgramData\chocolatey
set _sys_internal=D:\usr\misc\SysinternalsSuite
set _platinum_searcher=D:\var\dev\gopath\bin
set _gnu_global=D:\usr\misc\gnu-global\glo653wb
set _aspell=D:\usr\app\aspell
set _gnuplot=D:\app\gnuplot
set _ffmpeg=D:\usr\misc\ffmpeg\ffmpeg-20160828-a37e6dd-win64-static
set _gpg_root=D:\app\gpg-win
set _ledger_root=E:\var\datum\Dropbox\tools\ledger_win\ledger_3.1.1
set _graphics_magick=D:\usr\misc\gm\GraphicsMagick-1.3.25-Q16
set _hg_root=D:\usr\app\Mercurial
set _heroku_root=D:\usr\misc\heroku

:: Databases
set _pg_root=E:\dev\pg\postgresql-9.6.1-1-x64
set _pg_admin_root="E:\dev\pg\postgresql-9.6.1-1-x64\pgAdmin 4"
set _db_store=F:\db
set _pg_test_db_store=%_db_store%\pg_test_db

