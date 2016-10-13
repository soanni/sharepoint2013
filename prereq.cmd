start "Launch SharePoint preparation tool" "E:\prerequisiteinstaller.exe" /continue

Add-WindowsFeature NET-WCF-HTTP-Activation45,NET-WCF-TCP-Activation45,NET-WCF-Pipe-Activation45
dism /online /enable-feature /featurename:IIS-ASPNET45