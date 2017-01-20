@echo off


:: Source
::http://www.aftvnews.com/how-to-root-the-amazon-fire-tv-using-the-dirty-cow-vulnerability/


color 0e


set runShellNoTerminateAndWait=cmd /k
set runShellNoTerminate=start cmd /k
set runShellWaitNoTerminate=start /wait cmd /k
set runShellTerminateAndWait=cmd /c
set runShellTerminate=start cmd /c
set runShellWaitTerminate=start /wait cmd /c

set _color="%cd%\bin\cocolor.exe"

set sleep="..\..\..\bin\wait.exe"
set rm=rmdir /s /q

set adb="..\..\..\bin\adb.exe"
set adbKill=%adb% kill-server
set adbStart=%adb% start-server
set adbWait=%adb% wait-for-device

set push=%adb% push
set pull=%adb% pull
set shell=%adb% shell
set connect=%adb% connect
set disconnect=%adb% disconnect

set ip=0.0.0.0

set virtualRouterCMD="..\..\..\bin\virtualrouter.exe"
set virtualRouterGUI="..\..\..\bin\virtualrouter-gui.exe"

set amStart=%shell% am start -a android.intent.action.MAIN -n

set showSettingsSystemNetwork=%amStart% com.amazon.tv.settings/.wifi.BuellerNetworkSettingsActivity


:: Wait for device
%adbWait% 


:: DirtyCow Exploit Files
%push% "push" /data/local/tmp/

:: Set Exploit Files Permissions On Device
%shell% chmod 755 /data/local/tmp/*

cls
%adbKill%


::%shell% "sh /data/local/tmp/getdirty.sh"
%shell% /data/local/tmp/dirtycow /system/bin/run-as /data/local/tmp/cowscript

::echo.
::echo.
::echo Press a key once exploit has finished....
::echo.
::echo.
::pause>nul

::%shell% "su"

%sleep% 5

%shell% "/system/bin/run-as 0"

:: Try launching TWRP Installer
::%shell% "/system/bin/sh /sdcard/montoya_recovery_v1.zip"


::%shell% "cat /system/xbin/montoya_diag.sh"
::%shell% "sh /system/xbin/montoya_diag.sh"

echo.
echo.
echo.
::echo ** If the cowscript script shows above then the exploit worked! **
::echo.
::echo.
::echo Type in "su" without quotes and Press ENTER to test exploit result
::echo.
echo.
echo Type "exit" without quotes to leave shell
echo.
echo.



%shell%


:end



