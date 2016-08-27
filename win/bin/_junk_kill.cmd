@echo off

:: kill junk tasks: qqprotectupd.exe
setlocal

set "_junks=qqprotectupd.exe"
(for %%t in (%_junks%) do (
  echo Killing %%t
  taskkill /f /im %%t
))
endlocal
