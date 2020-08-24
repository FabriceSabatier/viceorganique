SET "CHROMEA="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe""
SET "CHROMEB="C:\Program Files\chrome-win\chrome.exe""
SET NODE="C:\Program Files\nodejs\"

ECHO "------------------------------------------------"
::test
::start cmd /k ""START /D" "C:\Program Files\nodejs\" "node.exe" "server.js""
::start /D CHROME2 chrome.exe

start cmd /k ""C:\Program Files\nodejs\nodevars.bat" & node server.js"

ECHO "------------------------------------------------"
ECHO "WAINTING"
TIMEOUT 5

ECHO "------------------------------------------------"
::START WIN 1
start "" %CHROMEA% --app="http://localhost:8080/index.html?connect=pilot" --window-position=0,0 --kiosk --user-data-dir=c:/monitor1

TIMEOUT 2
::START WIN 2
start "" %CHROMEB% --app="http://localhost:8080/index_gdecran.html" --window-position=1920,0 --kiosk --user-data-dir=c:/monitor2

