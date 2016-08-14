@echo off

set adb="..\..\bin\adb.exe"


:loop

%adb% logcat

::goto loop

