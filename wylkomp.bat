@echo off
title Wyˆ¥czenie komputera by kotol22
:menu
cls
echo 1. Wyˆ¥czenie komputera za zaplanowany czas.
echo 2. Anulowanie zaplanowanego wyˆ¥czania komputera.
echo 3. Wyj˜cie.
choice /c 123 >nul
if %errorlevel%==1 goto wylacz
if %errorlevel%==2 goto anuluj
if %errorlevel%==3 goto wyjscie
:wylacz
cls
echo Podaj czas do zaplanowanego wyˆ¥czania komputera. [godziny]
set /p czas="> "
set /a godziny=%czas%*3600
shutdown -s -t %godziny%
echo Komputer zostanie wyˆ¥czony za %czas% godzin(y)(©).
pause>nul
goto menu
:anuluj
cls
shutdown -a
echo Komputer ju¾ NIE zostanie wyˆ¥czony.
pause>nul
goto menu
:wyjscie
cls
exit