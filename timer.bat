
@echo off
set /p minutes="Enter the number of minutes: "
echo Waiting for %minutes% minutes...

:loop
if %minutes% leq 0 goto end
echo %minutes% minutes left...
set /a minutes=%minutes%-1
ping localhost -n 61 > nul
goto loop

:end
echo Time's up!

:: Call PowerShell script without specifying the full path
PowerShell -NoProfile -ExecutionPolicy Bypass -File ".\ColorChange.ps1"
