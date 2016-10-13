# Displays messages and restarts if needed
function CheckPrerequisites($exitCode){
    switch ($exitCode)
    {
        0 {
            Write-Host "Prerequisites installed successfully" -ForegroundColor Green 
        }
        1001 {
            Write-Host "Restart is needed" -ForegroundColor Yellow
            Restart
        }
        3010 {
            Write-Host "Restart is needed" -ForegroundColor Yellow
            Restart
        }
        default {
            Write-Host "Installation has failed" -ForegroundColor Red
        }
    }
    return $exitCode
}

$path = "c:\sp2013\prerequisiteinstaller.exe"
Write-Host "Installing Prerequisites..." -ForegroundColor Yellow
$process = $null
$arguments = "/unattended"
$process = (Start-Process -Wait -PassThru $path $arguments)
#$process = (Start-Process -Wait -PassThru $path)

CheckPrerequisites($process.ExitCode)