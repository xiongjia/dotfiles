@echo off

:: All settings (enable the settings via %_xj_dev_cfg% )
if "%_xj_dev_cfg%" == "wrk" ( call %~dp0\.\_settings_wrk.cmd & goto :end )

:: default settings
call %~dp0\.\_settings_home.cmd
:end

