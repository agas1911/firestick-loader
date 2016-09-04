@echo off

color 0b

set adb="..\..\bin\adb.exe"




:loop

cls
echo Enter Activity and Press Enter:
echo.
echo.
echo Example: de.belu.firestopper/.gui.MainActivity
echo.
echo.
echo.

set /p activity=

%adb% shell "am start -a android.intent.action.MAIN -n %activity%"

goto loop

