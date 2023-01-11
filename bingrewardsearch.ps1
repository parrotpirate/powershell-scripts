$pathToChrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$startProfile = '--profile-email=parrotpirate@gmail.com'
$startMode = '--start-maximized'
$startPage = 'https://rewards.bing.com/'
$logFile = "C:\Users\parro\Tools\bing_rewards_log.txt"
$endPage = 'https://www.reddit.com/r/MicrosoftRewards/new/?f=flair_name%3A"Quizzes%20and%20Answers"'

# nircmd win close process chrome.exe | Out-Null
# sleep 0.5
# bing-rewards --desktop --no-exit --count=45 | Out-Null
# sleep 1
# nircmd win close process chrome.exe | Out-Null
# sleep 0.5
# bing-rewards --mobile --no-exit --count=20 | Out-Null
# sleep 1
# nircmd win close process chrome.exe | Out-Null
# sleep 0.5
# Start-Process -FilePath $pathToChrome -ArgumentList $startmode, $startPage | Out-Null
# sleep 0.5
# stop-process -Id $PID

if (Test-Path $logFile)
{
  Remove-Item $logFile
}
sleep 0.5
nircmd win close process chrome.exe | Out-Null
sleep 1
Start-Process -FilePath $pathToChrome -ArgumentList $startProfile, $startMode | Out-Null
sleep 1
nircmd win close process chrome.exe | Out-Null
sleep 1
bing-rewards | Out-File $logFile
sleep 1
nircmd win close process chrome.exe | Out-Null
sleep 1
Start-Process -FilePath $pathToChrome -ArgumentList $startMode, $endPage | Out-Null
stop-process -Id $PID
