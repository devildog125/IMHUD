#!/bin/bash --rcfile

source /etc/bash.bashrc
source ~/.bashrc

cat /etc/aiyprojects.info

cd ~/voice-recognizer-raspi
source env/bin/activate

echo "Run src/main.py to start the voice recognizer manually."
echo "Please run 'pip install rgbxy & pip install phue' upon first run"
echo "Also run pip install --upgrade pip"
