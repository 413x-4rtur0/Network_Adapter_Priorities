Set-NetIPInterface -InterfaceIndex "7" -InterfaceMetric "15"
Start-Sleep -s 5
Set-NetIPInterface -InterfaceIndex "15" -InterfaceMetric "90"
Start-Sleep -s 5
exit