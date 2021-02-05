@echo off
title wylkomp - Zaplanuj wy³¹czenie komputera
:menu
cls
echo 1. Wy³¹cz komputer za okreœlony czas.
echo 2. Anuluj zaplanowane wy³¹czenie komputera.
echo 3. Wyjœcie.
choice /c 123 > nul
if %errorlevel%==1 goto plan
if %errorlevel%==2 goto abortturnoff
if %errorlevel%==3 goto quit
:plan
cls
echo Planowanie wy³¹czenia komputera za okreœlony czas.
echo.
echo Podaj godziny [h]:
set /p hours="> "
echo Podaj minuty [min]:
set /p minutes="> "
set /a time=%hours%*3600+%minutes%*60
shutdown -s -t %time%
echo.
echo Zaplanowano wy³¹czenie komputera za %hours%h %minutes%min.
pause > nul
goto menu
:abortturnoff
cls
shutdown -a
echo Anulowanie zaplanowanego wy³¹czenia komputera.
echo.
echo Planowane wy³¹czenie komputera zosta³o anulowane.
pause > nul
goto menu
:quit
cls
exit