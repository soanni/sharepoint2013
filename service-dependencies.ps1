Get-Service bfe |
ForEach-Object { 
write-host -ForegroundColor 9 "`tService name $($_.name)"
  if($_.DependentServices) 
    { write-host -ForegroundColor 3 "Services that depend on $($_.name)"
      foreach($s in $_.DependentServices) 
       { "`t`t" + $s.name + "--" + $s.status} 
    } #end if DependentServices 
  if($_.RequiredServices) 
    { Write-host -ForegroundColor 10 "`tServices required by $($_.name)"
      foreach($r in $_.RequiredServices) 
       { "`t`t" + $r.name + "--" + $r.status} 
    } #end if DependentServices 
} #end foreach-object