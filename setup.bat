@echo off
REM Cognitive Nexus AI - Setup Script
REM Installs dependencies and prepares the environment

echo.
echo ========================================
echo   🧠 Cognitive Nexus AI - Setup
echo ========================================
echo.

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python not found!
    echo.
    echo Please install Python from:
    echo 1. Microsoft Store: https://aka.ms/python-store
    echo 2. Or download from: https://www.python.org/downloads/
    echo.
    echo Make sure to check "Add Python to PATH" during installation.
    echo.
    pause
    exit /b 1
)

echo ✅ Python found!
python --version
echo.

echo 📦 Installing dependencies...
echo This may take several minutes...
echo.

pip install -r requirements.txt

if errorlevel 1 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo ✅ Setup complete!
echo.
echo 🚀 You can now run the app using:
echo    launch.bat
echo    or
echo    python launch.py
echo.
pause

