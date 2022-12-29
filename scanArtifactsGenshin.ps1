$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'https://genshin-center.com/planner https://frzyc.github.io/genshin-optimizer/#/characters'
$dataFolder = "C:\Users\parro\Documents\GenshinData"

del $dataFolder\*
schtasks /RUN /TN "genshinArtifacts"
schtasks /RUN /TN "scanArtifacts"
Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID