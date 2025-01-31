@echo off
echo Loading GodMode...
color 1C
set "GodModeFolder=%USERPROFILE%\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"

timeout /t 3 /nobreak >nul

if exist "%GodModeFolder%" (
    echo Folder Opening...
    timeout /t 2 /nobreak >nul
    start "" "%GodModeFolder%"
) else (
    echo Creating Folder...
    timeout /t 1 /nobreak >nul
    mkdir "%GodModeFolder%" 2>nul
    echo Folder Created!
    timeout /t 3 /nobreak >nul
    echo Folder Opening...
    timeout /t 3 /nobreak >nul
    start "" "%GodModeFolder%"
    echo Folder Open!
)
echo Exiting...
timeout /t 10 /nobreak >nul
exit