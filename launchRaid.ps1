$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startProfile = '--profile-email=parrotpirate@gmail.com'
$startMode = '--start-maximized'
$startPage = 'https://raidoptimiser.hellhades.com/'

schtasks /RUN /TN "launchRaid"
schtasks /RUN /TN "launchHellHades"
schtasks /RUN /TN "launchRaidHelper"

$winid = $null
while (!$winid) {
  Start-Sleep -Milliseconds 1000
  $winid = Get-Process |where {$_.MainWindowTitle -like "Raid: Shadow Legends"} |select -expand id
}

# Start-Process -FilePath $pathToChrome -ArgumentList $startMode, $startPage | Out-Null

# nircmd win activate process "Raid.exe"
nircmd win max process "Raid.exe"

stop-process -Id $PID
