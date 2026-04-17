@echo off
set FILENAME=main.py

echo --- Step 1: Checking for Python ---
py --version >nul 2>&1
if %errorlevel% neq 0 (
    python --version >nul 2>&1
    if %errorlevel% neq 0 (
        echo ERROR: Python not found.
        pause
        exit
    ) else ( set PY_CMD=python )
) else ( set PY_CMD=py )

echo --- Step 2: Creating Virtual Environment ---
if not exist venv %PY_CMD% -m venv venv

echo --- Step 3: Activating & Installing ---
call venv\Scripts\activate

:: This is the fix for the compiler error:
python -m pip install --upgrade pip setuptools wheel
pip install --only-binary=:all: numpy pandas
pip install -r requirements.txt

echo --- Step 4: Launching API ---
uvicorn main:app --reload --port 8080
pause