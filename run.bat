@echo off
setlocal enabledelayedexpansion

:: Check if the venv directory exists
if not exist ".\venv" (
    echo Virtual environment not found. Creating one...
    python -m venv venv
)

echo Attempting to start venv
call ".\venv\Scripts\activate.bat"
echo:

echo Updating Pip
python -m pip install --upgrade pip

echo Installing dependencies
python -m pip install -r requirements.txt

echo:
python b2b.py
pause
