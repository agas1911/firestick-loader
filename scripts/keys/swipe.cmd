@echo off

set adb="..\..\bin\adb.exe"

color 0e

set x1=200
set y1=900
set x2=200
set y2=300


:start

cls
echo Set X1 and Press ENTER:
echo.
echo.
echo.
echo Current Values:
echo.
echo X1: %x1%
echo.
echo Y1: %y1%
echo.
echo X2: %x2%
echo.
echo Y2: %y2%
echo.
echo.

set /p x1=

cls
echo Set Y1 and Press ENTER:
echo.
echo.
echo.
echo Current Values:
echo.
echo X1: %x1%
echo.
echo Y1: %y1%
echo.
echo X2: %x2%
echo.
echo Y2: %y2%
echo.
echo.

set /p y1=

cls
echo Set X2 and Press ENTER:
echo.
echo.
echo.
echo Current Values:
echo.
echo X1: %x1%
echo.
echo Y1: %y1%
echo.
echo X2: %x2%
echo.
echo Y2: %y2%
echo.
echo.

set /p x2=

cls
echo Set Y2 and Press ENTER:
echo.
echo.
echo.
echo Current Values:
echo.
echo X1: %x1%
echo.
echo Y1: %y1%
echo.
echo X2: %x2%
echo.
echo Y2: %y2%
echo.
echo.

set /p y2=

%adb% shell input swipe %x1% %y1% %x2% %y2%

goto start


:end



