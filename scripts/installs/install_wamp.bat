REM The below command was temporarily working to successfully download the installer but is now giving a 404.
REM Switching to copying the file from the repo until a reliable host can be found.
REM powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://downloads.sourceforge.net/project/wampserver/WampServer%202/WampServer%202.2/wampserver2.2d-x64.exe', 'C:\Windows\Temp\wampserver2.2.d-x64.exe')" <NUL
copy /Y "C:\vagrant\resources\wamp\wampserver2.2d-x64.exe" "C:\Windows\Temp\wampserver2.2.d-x64.exe"
C:\Windows\Temp\wampserver2.2.d-x64.exe /verysilent
copy /Y "C:\vagrant\resources\wamp\httpd.conf" "C:\wamp\bin\apache\Apache2.2.21\conf\httpd.conf"
copy /Y "C:\vagrant\resources\wamp\phpmyadmin.conf" "C:\wamp\alias\phpmyadmin.conf"
net start wampapache
net start wampmysqld