powershell.exe -Command "Enable-PSRemoting -Force"
powershell.exe -Command "Set-Item wsman:\localhost\client\trustedhosts *"
winrm set winrm/config/client/auth @{Basic="true"}
winrm set winrm/config/service/auth @{Basic="true"}
winrm set winrm/config/service @{AllowUnencrypted="true"}
