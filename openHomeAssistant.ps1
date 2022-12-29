$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'https://sdp-homeassistant.duckdns.org'

Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID