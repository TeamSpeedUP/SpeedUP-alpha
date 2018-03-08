@echo off

ver | findstr /i "6\.0\." > nul
if %ERRORLEVEL% EQU 0 (
goto Vista
)

ver | findstr /i "6\.1\." > nul
if %ERRORLEVEL% EQU 0 (
goto 7
)

ver | findstr /i "6\.2\." > nul
if %ERRORLEVEL% EQU 0 (
goto 8
)

ver | findstr /i "6\.3\." > nul
if %ERRORLEVEL% EQU 0 (
goto 81
)

ver | findstr /i "10\.0\."
if %ERRORLEVEL% EQU 0 (
goto 10
)

:10
start %cd%\WinVersionsSetups\Win10.bat
exit


:81
start %cd%\WinVersionsSetups\Win81.bat
exit

:8
start %cd%\WinVersionsSetups\Win8.bat
exit

:7
start %cd%\WinVersionsSetups\Win7.bat
exit

:Vista
start %cd%\WinVersionsSetups\WinVista.bat
exit
