"Ubuntu" | % { New-VM $PSItem -MemoryStartupBytes 4GB -SwitchName "Default Switch" -NewVHDPath 
"E:\Machines\Ubuntu\$PSItem.vhdx" -NewVHDSizeBytes 30GB -Generation 2; Add-VMDvdDrive $PSItem; Set-VMDvdDrive $PSItem -Path 
"D:\Vm-Image\Ubuntu_22.04_amd64.iso"; Set-VMFirmware $PSItem -FirstBootDevice ( Get-VMDvdDrive $PSItem ) -EnableSecureBoot Off; Start-VM $PSItem }
