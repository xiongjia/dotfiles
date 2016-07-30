@echo off

if "%_dbg%" == "true" (
  @echo ===========================================
  @echo Debug proxy info:
  @echo ===========================================
  @echo Http proxy  : %http_proxy%
  @echo Https proxy : %https_proxy%
  @echo FTP proxy   : %ftp_proxy%
  @echo rsync proxy : %rsync_proxy%
  @echo All proxy   : %all_proxy%
  @echo No proxy    : %no_proxy%

  @echo ===========================================
  @echo Debug Java/Scala opts: 
  @echo ===========================================
  @echo Scala opts : %SCALA_OPTS%
  @echo Ant opts   : %ANT_OPTS%

  @echo ===========================================
  @echo Dev env: 
  @echo ===========================================
  @echo Path: %_dev_path%
  @echo Boost: %BOOSTROOT%
  @echo Git ssh: %GIT_SSH%
  @echo NT Symbol: %_NT_SYMBOL_PATH%
  @echo Temp/Tmp: %temp%;%tmp%

  @echo ===========================================
  @echo Dev tools: 
  @echo ===========================================
  where python pip ipython perl ruby node npm
  where java scala gradle mvn ant sbt
  where go gocode godef gorename oracle
  where windbg adplus depends cmake cmake-gui
  where jshint grunt bower node-inspector
  where curl wget tee tar gzip
  where pscp putty plink pageant
  where git gitk pt ag ack global aspell
  where dbgview tcpview procexp procmon
)

