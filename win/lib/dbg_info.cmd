@echo off

if %_dbg% == true (
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
  @echo Dev path: 
  @echo ===========================================
  @echo %_dev_path%

  @echo ===========================================
  @echo Dev tools: 
  @echo ===========================================
  where python go perl ruby java gradle mvn node npm
  where jshint grunt bower node-inspector
  where curl wget tee tar gzip
  where git pt ag ack
)

