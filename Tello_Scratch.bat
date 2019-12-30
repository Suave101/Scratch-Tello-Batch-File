
@echo off
title Tello-Setup.exe
echo Welcome To Tello Scratch Setup
set tries=4
:top
cls
set /a tries=%tries% -1
if %tries%==0 (
goto ExitBD
)
Echo You have %tries% attempts left.
Echo Please enter your password to proceed
set /p password=
if %password%==Tello_Commander (
cls
Echo Welcome To The TPP v2
ping localhost -n 0.15 >NUL
goto Mission
cls
) else (
cls
echo I
PING localhost -n 0.15 >NUL
cls
echo IN
PING localhost -n 0.15 >NUL
cls
echo INC
PING localhost -n 0.15 >NUL
cls
echo INCO
PING localhost -n 0.15 >NUL
cls
echo INCOR
PING localhost -n 0.15 >NUL
cls
echo INCORR
PING localhost -n 0.15 >NUL
cls
echo INCORRECT
PING localhost -n 0.15 >NUL
cls
echo INCORRECT P
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PA
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PAS
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PASS
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PASSW
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PASSWO
PING localhost -n 0.15 >NUL
cls
echo INCORRECT PASSWOR
PING localhost -n 0.15 >NUL
echo INCORRECT PASSWORD
PING localhost -n 10 >NUL
goto top
)
goto top
goto end
:Mission
cd C:\Users\Alexander\Desktop\Tello_Test
Start node tello.js
ping localhost -n 10 >NUL
goto end
:ExitBD
cls
echo INCORRECT PASSWORD
echo Goodbye :)
ping localhost -n 5 >NUL
:end