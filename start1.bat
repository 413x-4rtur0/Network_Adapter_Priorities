cd /d %~dp0
set dira=%~dp0
@echo on
netsh interface set interface "Ethernet" admin=enable
timeout /t 5
netsh interface set interface "USB" admin=enable
timeout /t 5
powershell -command "start-process -verb runas powershell" "'-noexit -File \"%dira%NAP-1.ps1\"'"