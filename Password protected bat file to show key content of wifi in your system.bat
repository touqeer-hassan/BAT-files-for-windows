@echo off
echo Here you can see password of your connected wifi
pause
cls
set /p pass="Enter password to Run Program: "
cls
if %pass% EQU 201741 (
goto a
)
if %pass% NEQ 201741 (
goto b
:a
netsh wlan show profiles
set /p name=Enter name as it is of Profile which you want to see password: 
netsh wlan show profiles "%name%" key=clear
echo In Security Settings, Key Content is Password of Wifi
pause
exit
)
:b
echo Sorry!!! Wrong Password...
echo Press any key to exit
pause>null