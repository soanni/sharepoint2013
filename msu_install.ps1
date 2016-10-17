$sb={
     $arglist='Windows6.1-KBxxxxxxx-x64.msu','/quiet','/norestart'
     Start-Process -FilePath 'c:\windows\system32\wusa.exe' -ArgumentList $arglist -NoNewWindow -Wait
}
Invoke-Command -ComputerName $computer -ScriptBlock $sb