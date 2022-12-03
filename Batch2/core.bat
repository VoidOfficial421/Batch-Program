@echo off
goto checks


:checks
if not exist yesornoprompt.vbs goto errormessage
if not exist main.bat goto errormessage
if not exist stall.vbs goto errormessage
if exist main.bat goto main

:errormessage
title Uh oh!
color 04
cls
echo It seems that a critical file that is used to run this program is missing.
echo.
echo Press any key to exit this program.
pause >nul
exit

:main
color 0a
echo Skip The Boot Screen?
echo.
echo 1) Yes
echo 2) No
echo.
echo.
set /p decision=
if %decision% == 1 goto mainmenu
if %decision% == 2 goto bootup
goto errormessage

:bootup
start winxp.mp3
echo Program Loading.
timeout /t 5 /nobreak >nul
taskkill /IM wmplayer.exe /t /f
goto mainmenu


:mainmenu
cls
echo Program Loading.
timeout /t /5 /nobreak >nul
cls
color 0a
echo Welcome to the Digital Age!
echo.
echo Please enter your username.
echo.
set /p username=
if %username% == thematrixisnow goto matrixscreen
if %username% == trixie color 07
goto HomeScreen

:HomeScreen
title Welcome %username% :)
color 0d
cls
echo Welcome! %username%
echo Date           Time
echo %date%   %time%
echo.
echo What would you like to do?
echo.
echo 1.) App Drawer
echo.
echo.
set /p choice=
if %choice% == 1 goto comingsoon
if %choice% == 2 goto clock
goto HomeScreen


:matrixscreen
title THE MATRIX IS NOW.
@echo off
 color 02
 :start
 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
 echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
 goto start






:comingsoon
cls
start COMINGSOON.vbs
echo.
echo Going back to the Home Screen in 10 seconds.
timeout /t 10 /nobreak >nul
goto HomeScreen
