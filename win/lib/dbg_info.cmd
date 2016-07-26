@echo off

if "%_dbg%" == "true" (
  @echo "Debug proxy info:"
  @echo "Http proxy  : %http_proxy%"
  @echo "Https proxy : %https_proxy%"
  @echo "FTP proxy   : %ftp_proxy%"
  @echo "rsync proxy : %rsync_proxy%"
  @echo "All proxy   : %all_proxy%"
  @echo "No proxy    : %no_proxy%"

  @echo "Debug Java/Scala info: "
  @echo "Scala opts : %SCALA_OPTS%"
  @echo "Ant opts   : %ANT_OPTS%"

  @echo "Dev path: "
  @echo %_dev_path%
)

