#!/bin/bash

TAG_CP="v3.7.4" # has to be constant due to latest having no 3ds release

mkdir cias
cd cias

wget https://github.com/astronautlevel2/Anemone3DS/releases/latest/download/Anemone3DS.cia
wget https://github.com/BernardoGiordano/Checkpoint/releases/download/$TAG_CP/Checkpoint.cia
wget https://github.com/PabloMK7/homebrew_launcher_dummy/releases/latest/download/Homebrew_Launcher.cia
wget https://github.com/Steveice10/FBI/releases/latest/download/FBI.cia
wget https://github.com/mtheall/ftpd/releases/latest/download/ftpd.cia
wget https://github.com/Universal-Team/Universal-Updater/releases/latest/download/Universal-Updater.cia

cd ..

