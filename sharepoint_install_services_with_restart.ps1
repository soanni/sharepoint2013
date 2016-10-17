# Import Required Module
Import-Module ServerManager

function AddWindowsFeatures() 
{ 
    Write-Host "==================================================================================="
    Write-Host "Install required Windows Roles/Features for SharePoint 2013 on Windows Server 2016"
    Write-Host "==================================================================================="        
    
    $WindowsFeatures = @(
            #dotnet 3.5
			"Net-Framework-Features",
			"Web-Server",
			"Web-WebServer",
			"Web-Common-Http",
			"Web-Static-Content",
			"Web-Default-Doc",
			"Web-Dir-Browsing",
			"Web-Http-Errors",
			"Web-App-Dev",
            #dotnet 3.5
			"Web-Asp-Net",
			"Web-Net-Ext",
			"Web-ISAPI-Ext",
			"Web-ISAPI-Filter",
			"Web-Health",
			"Web-Http-Logging",
			"Web-Log-Libraries",
			"Web-Request-Monitor",
			"Web-Http-Tracing",
			"Web-Security",
			"Web-Basic-Auth",
			"Web-Windows-Auth",
			"Web-Filtering",
			"Web-Digest-Auth",
			"Web-Performance",
			"Web-Stat-Compression",
			"Web-Dyn-Compression",
			"Web-Mgmt-Tools",
			"Web-Mgmt-Console",
			"Web-Mgmt-Compat",
			"Web-Metabase",
			"Application-Server",
			"AS-Web-Support",
			"AS-TCP-Port-Sharing",
			"AS-WAS-Support",
			"AS-HTTP-Activation",
			"AS-TCP-Activation",
			"AS-Named-Pipes",
			"AS-Net-Framework",
			"WAS",
			"WAS-Process-Model",
			"WAS-NET-Environment",
			"WAS-Config-APIs",
			"Web-Lgcy-Scripting",
			"Windows-Identity-Foundation",
			"Server-Media-Foundation",
			"Xps-Viewer"
    )

    Try 
    { 
	# Create PowerShell to execute 

        $source = "" 

        #if($windowsServer2012MediaPath -ne "") {
        #   $source = ' -source ' + $windowsServer2012MediaPath
        #}
        

        $myCommand = 'Install-WindowsFeature ' + [string]::join(",",$WindowsFeatures) + $source

	    # Execute $myCommand
        $operation = Invoke-Expression $myCommand    

        if ($operation.RestartNeeded -eq "Yes") { 
    		Restart-Computer
        }

    } 
    Catch 
    { 
        Write-Warning "Error when Adding Windows Features. Error details are below:" 
        Write-Error $_ 
        break 
    } 
      
} 

AddWindowsFeatures
 