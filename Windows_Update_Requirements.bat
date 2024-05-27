@echo off

cd SUPIR

git pull

call .\venv\Scripts\activate.bat || exit /b

pip install --force-reinstall -r requirements.txt

pip install torch==2.2.0 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121 --upgrade
pip install https://huggingface.co/MonsterMMORPG/SECourses/resolve/main/triton-2.1.0-cp310-cp310-win_amd64.whl
pip install xformers==0.0.24
pip install bitsandbytes==0.43.0 --upgrade

pause