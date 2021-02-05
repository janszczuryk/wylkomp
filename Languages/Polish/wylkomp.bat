@echo off
title wylkomp - Zaplanuj wy��czenie komputera
:menu
cls
echo 1. Wy��cz komputer za okre�lony czas.
echo 2. Anuluj zaplanowane wy��czenie komputera.
echo 3. Wyj�cie.
choice /c 123 > nul
if %errorlevel%==1 goto plan
if %errorlevel%==2 goto abortturnoff
if %errorlevel%==3 goto quit
:plan
cls
echo Planowanie wy��czenia komputera za okre�lony czas.
echo.
echo Podaj godziny [h]:
set /p hours="> "
echo Podaj minuty [min]:
set /p minutes="> "
set /a time=%hours%*3600+%minutes%*60
shutdown -s -t %time%
echo.
echo Zaplanowano wy��czenie komputera za %hours%h %minutes%min.
pause > nul
goto menu
:abortturnoff
cls
shutdown -a
echo Anulowanie zaplanowanego wy��czenia komputera.
echo.
echo Planowane wy��czenie komputera zosta�o anulowane.
pause > nul
goto menu
:quit
cls
exit