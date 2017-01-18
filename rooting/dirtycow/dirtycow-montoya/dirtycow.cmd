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

:: Fixes and Other Misc Exploit Related
%push% "push\persistant-shell.sh" /data/local/tmp/
%push% "push\turn-off-periodic-writeback.sh" /data/local/tmp/

:: Superuser Files
%push% "push\su" /data/local/tmp/

:: Busybox
%push% "push\busybox" /data/local/tmp/

:: Potential Victim Processes
%push% "push\app_process32" /data/local/tmp/
%push% "push\ip" /data/local/tmp/
%push% "push\ping" /data/local/tmp/
%push% "push\run-as" /data/local/tmp/

:: Set Exploit Files Permissions On Device
%shell% chmod 755 /data/local/tmp/cowscript
%shell% chmod 755 /data/local/tmp/dirtycow
%shell% chmod 755 /data/local/tmp/getdirty.sh
%shell% chmod 755 /data/local/tmp/persistant-shell.sh
%shell% chmod 755 /data/local/tmp/turn-off-periodic-writeback.sh

:: Set Processes Permissions On Device
%shell% chmod 755 /data/local/tmp/app_process32
%shell% chmod 755 /data/local/tmp/ip
%shell% chmod 755 /data/local/tmp/ping
%shell% chmod 755 /data/local/tmp/run-as


cls
%adbKill%
cls
%disconnect%

taskkill /f /im VirtualRouter.exe
taskkill /f /im VirtualRouterHostConsole.exe
::%virtualRouterCMD%
%virtualRouterGUI%

:: Wait for Virtual Router To Start
cls
echo Waiting for Virtual Router To Initialize....
echo.
echo.
%sleep% 8

%showSettingsSystemNetwork%


cls
echo Connect your device to the access point using DHCP
echo.
echo.
echo ** WAIT FOR THE CONNECTED STATUS ON DEVICE BEFORE CONTINUING! **
echo.
echo.
echo When finished press ENTER to continue....
echo.
echo.
pause>nul

%shell% "ip address | grep wlan0 | grep inet"

echo.
echo.

echo Find Device IP Address From Above
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Enter IP Address of Device and Press ENTER:
echo.
echo.

set /p ip=

%connect% %ip%

::echo.
::echo.
::echo.
::echo.
::echo Find your Device ID below and copy it
::echo.
::echo.
::%adb% devices

::echo.
::echo.
::echo.
::echo Paste the Device ID here and press a key when done....
::echo.
::echo.

::set /p device=

:: New Method Using Typed IP and Port 5555 as Defaults
set device=%ip%:5555

echo.
echo.
echo.
echo.
echo Exploiting....
echo.
echo.

%sleep% 5

%adb% -s %device% shell "sh /data/local/tmp/getdirty.sh"

::echo.
::echo.
::echo Press a key once exploit is finished....
::echo.
::echo.

::pause>nul

echo.
echo.
echo.
echo Waiting For Exploit To Finish....
echo.
echo.

%sleep% 5

echo.
echo.
echo.
echo.

%disconnect%

taskkill /f /im VirtualRouter.exe
taskkill /f /im VirtualRouterHostConsole.exe

:: Wait for Virtual Router To Start
cls
echo Waiting for Virtual Router To Relaunch....
echo.
echo.
%sleep% 8

::%virtualRouterCMD%
%virtualRouterGUI%

%showSettingsSystemNetwork%

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Click MENU Button and Press ENTER On Device To FORGET NETWORK!
echo.
echo Set your IP address to static on the firestick using the following settings:
echo.
echo.
echo IP Address: %ip%
echo.
echo Gateway: Use %ip% but change last digits to 1 (192.168.*.1)
echo.
echo Network Prefix Length: 24
echo.
echo DNS Primary: 8.8.8.8
echo.
echo DNS Secondary: 8.8.4.4
echo.
echo.
echo.
echo.
echo.
echo Press a key when finished....
echo.
echo.
pause>nul


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


taskkill /f /im VirtualRouter.exe
taskkill /f /im VirtualRouterHostConsole.exe


:end



