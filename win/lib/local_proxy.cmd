@echo off

set _proxy_host=localhost
set _proxy_port=8082

:: all proxies
if defined _proxy_host (
  set http_proxy=http://%_proxy_host%:%_proxy_port%
  set https_proxy=http://%_proxy_host%:%_proxy_port%
  set rsync_proxy=http://%_proxy_host%:%_proxy_port%
  set ftp_proxy=http://%_proxy_host%:%_proxy_port%
  set all_proxy=http://%_proxy_host%:%_proxy_port%
  set no_proxy=localhost,127.0.0.1
)

