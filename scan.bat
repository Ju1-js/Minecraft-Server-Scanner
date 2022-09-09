@echo off
powershell -command "Invoke-WebRequest -OutFile exclude.conf -Uri https://raw.githubusercontent.com/robertdavidgraham/masscan/master/data/exclude.conf"
echo Exclude updated
masscan64.exe -p25565 0.0.0.0/0 --max-rate 1000000 --excludefile exclude.conf -oL masscan.txt