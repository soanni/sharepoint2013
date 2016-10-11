start "Launch SharePoint preparation tool" "E:\prerequisiteinstaller.exe" /continue
"C:\Windows\Microsoft.NET\Framework64\v4.0.30319\aspnet_regiis.exe" -i -enable
Add-WindowsFeature NET-WCF-HTTP-Activation45,NET-WCF-TCP-Activation45,NET-WCF-Pipe-Activation45