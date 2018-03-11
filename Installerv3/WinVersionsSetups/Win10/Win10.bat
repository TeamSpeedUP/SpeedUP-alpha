@echo off

echo "Welcome to the windows 10 version of SpeedUP-Alpha"
echo "We need your support to continue this project, You can help us with it by Sharing issues on our github page!"
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
echo 3) Exit
echo.
set /p web=Type option:
if "%web%"=="1" goto SETUP1
if "%web%"=="2" goto CLEAR
if "%web%"=="3" exit


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