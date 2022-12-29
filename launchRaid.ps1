schtasks /RUN /TN "launchHellHades"
schtasks /RUN /TN "launchRaid"
stop-process -Id $PID
