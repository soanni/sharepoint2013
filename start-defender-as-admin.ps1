Start-Process powershell.exe -argumentlist '-noprofile -command Set-Service WinDefend -StartupType automatic' -verb runas
Start-Process powershell.exe -argumentlist '-noprofile -command Start-Service WinDefend' -verb runas