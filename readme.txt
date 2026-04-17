# 1. Activate your environment if you haven't
venv\Scripts\activate

# 2. Upgrade the tools that handle installations
python -m pip install --upgrade pip setuptools wheel

# 3. Force install pandas and numpy using binaries
pip install --only-binary=:all: numpy pandas

pip install seaborn matplotlib