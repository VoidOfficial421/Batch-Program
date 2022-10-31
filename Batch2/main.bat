@echo off
title Batch OS Version 0.00
color 0a
goto yousure

:yousure
cls
color 01
echo Press any key to start this program.
echo.
echo Batch OS Version 0.00
pause >nul
goto checks

:checks
if not exist yesornoprompt.vbs goto errormessage
if not exist core.bat goto errormessage
if not exist placeholdermessage.vbs goto errormessage
if exist yesornoprompt.vbs goto startprocess

:startprocess
start yesornoprompt.vbs
exit

:errormessage
color 04
cls
echo It seems that a critical file that is used to run this program is missing.
echo.
echo Press any key to exit this program.
pause >nul
exit