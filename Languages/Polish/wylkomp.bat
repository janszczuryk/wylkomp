@echo off
title wylkomp - Zaplanuj wyˆ¥czenie komputera
:menu
cls
echo 1. Wyˆ¥cz komputer za okre˜lony czas.
echo 2. Anuluj zaplanowane wyˆ¥czenie komputera.
echo 3. Wyj˜cie.
choice /c 123 > nul
if %errorlevel%==1 goto plan
if %errorlevel%==2 goto abortturnoff
if %errorlevel%==3 goto quit
:plan
cls
echo Planowanie wyˆ¥czenia komputera za okre˜lony czas.
echo.
echo Podaj godziny [h]:
set /p hours="> "
echo Podaj minuty [min]:
set /p minutes="> "
set /a time=%hours%*3600+%minutes%*60
shutdown -s -t %time%
echo.
echo Zaplanowano wyˆ¥czenie komputera za %hours%h %minutes%min.
pause > nul
goto menu
:abortturnoff
cls
shutdown -a
echo Anulowanie zaplanowanego wyˆ¥czenia komputera.
echo.
echo Planowane wyˆ¥czenie komputera zostaˆo anulowane.
pause > nul
goto menu
:quit
cls
exit