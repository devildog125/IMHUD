#!/bin/bash
# Will install everything needed for Iron Man HUD INSTALL VARIABLES
sudo apt-get update
echo -e "\\n"
echo -e "Please disable login over serial in raspi-config and enable hardware serial\\n"


# INSTALLS AND UPDATES REAL VNC SERVER ALONG WITH PYSOCKS
echo -e "Fixing VNC and PYSocks warning issue...\\n" 
sudo apt-get install realvnc-vnc-server && sudo apt-get install realvnc-vnc-viewer -y
sudo pip install PySocks 
clear 

cd ~
cd IMHUD
sudo cp config.txt /boot/config.txt
echo -e "Go to Advanced Options/Serial and set No to 
		“Would you like a login shell to be accessible over serial?” and 
		to enable hardware serial port?\\n"
sudo cp assistant.json /home/pi/
echo -e "Assistant.json copied!\\n"
sudo cp cloud_speech.json /home/pi/
echo -e "Cloud Speech copied!\\n"
sudo cp AIY-wallpaper.png /usr/share/pixel-wallpaper/AIY-wallpaper.png

sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service

sudo cp action.py ~/voice-recognizer-raspi/src/action.py
sudo cp voice-recognizer-shell.sh ~/home/pi/bin/voice-recognizer-shell.sh
cd 
curl https://processing.org/download/install-arm.sh | sudo sh
