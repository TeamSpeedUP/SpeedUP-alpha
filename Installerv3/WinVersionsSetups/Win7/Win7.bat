@echo off

echo "Welcome to the windows 7 version of SpeedUP-Alpha"
echo "We need your support to continue this project, You can help us with it by Sharing issues on our github page!"
pause
pause
title SpeedUP MENU
:home
cls
echo.
echo Select a task:
echo =============
echo.
echo 1) Apply All Fixes + IMPROVMENTS
echo 2) Clean TEMP
echo 3) IS
echo 4) Exit
echo.
set /p web=Type option:
if "%web%"=="1" goto SETUP1
if "%web%"=="2" goto CLEAR
if "%web%"=="3" goto IS
if "%web%"=="4" exit

:IS
netsh int tcp show global
netsh int tcp set global chimney=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
goto home

:CLEAR
del /s /f /q c:\windows\temp\*.*

rd /s /q c:\windows\temp

md c:\windows\temp

del /s /f /q C:\WINDOWS\Prefetch

del /s /f /q %temp%\*.*

rd /s /q %temp%

md %temp%

echo Done!
pause




:SETUP1
cd %~dp0
call Loader.bat
close