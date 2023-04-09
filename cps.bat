@echo off

REM Prompt the user for the cps value
set /p cps=Enter clicks per second (cps) value : 

REM Generate the AutoHotkey script
set script=clicker.ahk
echo "Clicker running at %cps% cps"
echo "Press and hold left mouse button to start clicking"
echo Loop
echo {
echo     if not GetKeyState("LButton", "P")
echo         break
echo     Click
echo     Sleep %((1000 / %cps%) - 1)%
echo }
echo Return > %script%

REM Run the new script
start /min "" "AutoHotkey.exe" "%script%"

REM Exit the batch script
exit
