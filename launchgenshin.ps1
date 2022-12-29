$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startMode = '--new-window'
$startPage = 'https://genshin-center.com/planner https://frzyc.github.io/genshin-optimizer/#/characters'

# schtasks /RUN /TN "elevatedGenshinOverlay"
# schtasks /run /tn "ElevatedCharacterSwitcher"
# iex 'C:\Users\Stephen` Parker\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe --new-window https://genshin-center.com/planner https://frzyc.github.io/genshin-optimizer/#/ https://genshin-impact-map.appsample.com/#/ https://genshin.gg/ https://gamewith.net/genshin-impact/article/show/22357#all'
# Start-Sleep -s 2
schtasks /RUN /TN "elevatedGenshin"
Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage
stop-process -Id $PID