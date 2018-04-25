@echo off
title "Running Scripts..."
call REGIMPORT.bat
call WSEARCH.bat
call TELEMDISABLE.bat
echo Activating %TEMP% Cleaner...
pause
cls
title "Temp Cleaner,Prefetch Cleaner"

del /s /f /q c:\windows\temp\*.*

rd /s /q c:\windows\temp

md c:\windows\temp

del /s /f /q C:\WINDOWS\Prefetch

del /s /f /q %temp%\*.*

rd /s /q %temp%

md %temp%
echo Done!
pause