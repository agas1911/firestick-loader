@echo off

color 0b

set adb="..\..\bin\adb.exe"
set shell=%adb% shell


cls
echo Set GREP Text (if any) and Press ENTER:
echo.
echo.
echo ** Separate Multiple Entries With A Pipe ^| Character **
echo.
echo.

set /p text=


:loop

%shell% "logcat v | grep %text%"

goto loop


:end

