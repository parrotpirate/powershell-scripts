$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'https://app.obico.io'

Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID