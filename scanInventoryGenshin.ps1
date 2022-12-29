$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'https://genshin-center.com/planner'

schtasks /RUN /TN "genshinInventory"
schtasks /RUN /TN "scanInventory"
Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID