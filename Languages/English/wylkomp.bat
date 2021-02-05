@echo off
title wylkomp - Schedule the computer shutdown
:menu
cls
echo 1. Shutdown the computer in the specified time.
echo 2. Cancel the scheduled computer shutdown.
echo 3. Quit.
choice /c 123 > nul
if %errorlevel%==1 goto plan
if %errorlevel%==2 goto abortturnoff
if %errorlevel%==3 goto quit
:plan
cls
echo Scheduling the computer shutdown for a specified time.
echo.
echo Enter amount of hours [h]:
set /p hours="> "
echo Enter amout of minutes [min]:
set /p minutes="> "
set /a time=%hours%*3600+%minutes%*60
shutdown -s -t %time%
echo.
echo The computer shutdown has been scheduled in %hours%h %minutes%min.
pause > nul
goto menu
:abortturnoff
cls
shutdown -a
echo Canceling the scheduled computer shutdown.
echo.
echo The scheduled computer shutdown has been canceled.
pause > nul
goto menu
:quit
cls
exit