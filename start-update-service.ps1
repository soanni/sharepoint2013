#Windows Update
Set-Service -Name "wuauserv" -StartupType automatic
Start-Service wuauserv
# Windows Firewall
Set-Service MpsSvc -StartupType automatic
Start-Service MpsSvc


#Windows Driver Foundation
#Set-Service -Name "wudfsvc" -StartupType automatic
#Start-Service wudfsvc
#WMI Performance Adapter
#Set-Service -Name "wmiApSrv" -StartupType automatic
#Start-Service wmiApSrv
#Windows Insider Service
#Set-Service -Name "wisvc" -StartupType automatic
#Start-Service wisvc
#Get-WMIObject win32_service -Filter "name = 'SysmonLog'"
