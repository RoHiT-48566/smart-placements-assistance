@echo off
TITLE Smart Placements Assistance
CLS

ECHO ==========================================
ECHO 🚀 Starting Smart Placements Assistance (Windows Mode)
ECHO ==========================================
ECHO ℹ️  Note: If this is the first run, it will take time to download the AI model.
ECHO ℹ️  Please wait until you see "Uvicorn running" in the logs.
ECHO ==========================================
ECHO.

:: 1. Check if Docker is actually running
docker info >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    ECHO ❌ ERROR: Docker is not running!
    ECHO    Please open "Docker Desktop" and try again.
    ECHO.
    PAUSE
    EXIT /B
)

:: 2. Run Docker Compose
:: We use --build to make sure he gets the latest version of your code
docker-compose up --build

:: 3. Keep window open if it crashes so he can see the error
IF %ERRORLEVEL% NEQ 0 (
    ECHO ❌ Something went wrong.
    PAUSE
)