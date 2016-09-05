@echo off

color 0b

set adb="..\..\bin\adb.exe"


cls
echo Available Keyboards:
echo.
%adb% shell ime list -s

echo.
echo.
echo.
echo.
pause

