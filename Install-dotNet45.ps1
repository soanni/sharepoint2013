$TempFolder = "C:\sources"
if(!(test-path $TempFolder))
{
    New-Item -path $TempFolder -type directory
}
  
Write-Host ""
$dest = "$TempFolder" + "\" + "dotnetfx45_full_x86_x64.exe"
$args = " /q /norestart"
Write-Host "Installing .NET framework v4.5" -ForegroundColor Yellow;
Start-Process -FilePath $dest -ArgumentList $args -Wait