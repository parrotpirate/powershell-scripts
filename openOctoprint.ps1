$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'http://octopi.local'

Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID