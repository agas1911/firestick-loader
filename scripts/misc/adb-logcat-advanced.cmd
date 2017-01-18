@echo off

color 0b

set adb="..\..\bin\adb.exe"
set shell=%adb% shell


cls
echo Set GREP Text (if any) and Press ENTER:
echo.
echo.
echo ** For Multiple Entries Use "text1 | grep text2" Format (NO QUOTES) **
echo.
echo.

set /p text=


:loop

%shell% "logcat v | grep %text%"

goto loop


:end

