Write-Host "Installing SharePoint..." -ForegroundColor Green

$args = "/config " + "C:\sp2013\config.xml"
$sharepoint = (Start-Process -Wait -PassThru "C:\sp2013\setup.exe" -ArgumentList $args)

switch($sharepoint.ExitCode)
{
    0 {
        Write-Host "SharePoint successfully installed" -ForegroundColor Green
    }
    default{
        Write-Host "An error has occured. Code: " $sharepoint.ExitCode -ForegroundColor Red
    }
}

return $sharepoint.ExitCode