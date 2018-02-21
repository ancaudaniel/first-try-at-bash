param
(
$vmname,
$nrproc=2,
$ram=2GB,
$SWname

)

$freeMem=(gwmi Win32_OperatingSystem | select FreePhysicalMemory).FreePhysicalMemory
$freeMemgb=$freemem/=(1024*1024)

if ( $ram -gt $freeMemgb){
write-host "Don't Be Greedy"
}


$vmcheck = Get-Vm -vmname $vmname -ErrorAction SilentlyContinue
if ($? -eq "true"  ){
write-host "vm is there"
}
else {
New-VM -Name $vmname -Generation 1 -MemoryStartupBytes $ram  -NewVHDPath C:\Users\Public\vhd\base.vhdx -NewVHDSizeBytes 64gb -SwitchName $SWname -BootDevice CD 

}

Enable-VMIntegrationService –Name "guest service interface" -VMName $vmname



