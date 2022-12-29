#Requires -Version 7

using namespace System.Diagnostics

while ($true) {
    if ($quakeProcess.HasExited) {
        $quakeProcess.Dispose()
        $quakeProcess = $null
    }
    
    if (!$quakeProcess -and ($quakeProcessId = gcim Win32_Process -Filter "Name = 'WindowsTerminal.exe' AND CommandLine LIKE '%_quake%'" | select -First 1 -Expand ProcessId)) {
        $quakeProcess = [Process]::GetProcessById($quakeProcessId)
    }
    
    if (!$quakeProcess) {
        Write-Host "Launching quake terminal: $(Get-Date)"
        $quakeProcess = Start-Process wt.exe -ArgumentList "-w","_quake" -WindowStyle Minimized -PassThru
    }
    
    sleep 0.25
}
