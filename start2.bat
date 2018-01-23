cd /d %~dp0
set dira=%~dp0
@echo on
netsh interface set interface "USB" admin=disable
timeout /t 5
netsh interface set interface "Ethernet" admin=disable
timeout /t 5
powershell -command "start-process -verb runas powershell" "'-noexit -File \"%dira%NAP-2.ps1\"'"