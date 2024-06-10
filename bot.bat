@echo off
title UT Infrastructure Bot Activation
color 0A

:: Initial setup
set authenticated=false
set bot_enabled=false

:login
cls
echo ==================================================
echo          Welcome to the UT Infrastructure
echo ==================================================
set /p user="Enter your username: " || goto login
set /p pass="Enter your password: " || goto login

:: Simulating authentication
if "%user%"=="admin" if "%pass%"=="ut123" (
    set authenticated=true
) else (
    echo Authentication failed. Access denied.
    timeout /t 3 >nul
    goto login
)

if %authenticated%==true (
    echo Authentication successful!
    timeout /t 2 >nul
    goto enable_bot
)

:enable_bot
cls
echo ==================================================
echo        Welcome, Administrator %user%!
echo ==================================================
echo Activating UT Infrastructure Bot...
timeout /t 3 >nul
set bot_enabled=true

if %bot_enabled%==true (
    echo UT Infrastructure Bot activated successfully!
    echo You're ready to deploy the bot into the Fractal Flame.
    timeout /t 3 >nul
    goto main_menu
)

:main_menu
cls
echo ==================================================
echo           UT Infrastructure Control Panel
echo ==================================================
echo 1. Operate Infrastructure Controller
echo 2. Deploy Bot into the Fractal Flame
echo 3. Deactivate Bot
echo 4. Logout
echo ==================================================
set /p choice="Enter your choice: " || goto main_menu

if "%choice%"=="1" goto Operat_infra
if "%choice%"=="2" goto deploy_bot
if "%choice%"=="3" goto deactivate_bot
if "%choice%"=="4" goto logout
echo Invalid input. Please try again.
timeout /t 3 >nul
goto main_menu

:Operat_infra
cls
echo ==================================================
echo          UT Infrastructure Operating
echo ==================================================
:: Add Operating commands or display infrastructure status
echo Operating infrastructure... (Placeholder)
timeout /t 5 >nul
goto main_menu

:deploy_bot
cls
echo ==================================================
echo            Deploying UT Bot into the Fractal Flame
echo ==================================================
:: Add commands to deploy the bot
echo Deploying bot... (Placeholder)
timeout /t 3 >nul
echo Bot deployed successfully!
timeout /t 3 >nul
goto main_menu

:deactivate_bot
cls
echo ==================================================
echo              Deactivating UT Bot
echo ==================================================
:: Add commands to deactivate the bot
echo Deactivating bot... (Placeholder)
timeout /t 3 >nul
echo Bot deactivated successfully!
timeout /t 3 >nul
goto main_menu

:logout
cls
echo Logging out...
timeout /t 2 >nul
exit
