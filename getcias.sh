mkdir clones
cd clones

git clone https://github.com/Steveice10/FBI
git clone https://github.com/PabloMK7/homebrew_launcher_dummy
git clone https://github.com/astronautlevel2/Anemone3DS
git clone https://github.com/BernardoGiordano/Checkpoint
git clone https://github.com/mtheall/ftpd
git clone https://github.com/Universal-Team/Universal-Updater

cd Anemone3DS
TAG_FISH=$(git describe --tags --abbrev=0)
cd ..
cd Checkpoint
TAG_CP="v3.7.4" # has to be fixed due to latest having no 3ds release
cd ..

cd FBI
TAG_FBI=$(git describe --tags --abbrev=0)
cd ..

cd ftpd
TAG_FTPD=$(git describe --tags --abbrev=0)
cd ..

cd homebrew_launcher_dummy
TAG_HBL=$(git describe --tags --abbrev=0)
cd ..

cd Universal-Updater
TAG_UU=$(git describe --tags --abbrev=0)
cd ..

cd ..
rm -rf clones

mkdir cias
cd cias

wget https://github.com/astronautlevel2/Anemone3DS/releases/download/$TAG_FISH/Anemone3DS.cia
wget https://github.com/BernardoGiordano/Checkpoint/releases/download/$TAG_CP/Checkpoint.cia
wget https://github.com/PabloMK7/homebrew_launcher_dummy/releases/download/$TAG_HBL/Homebrew_Launcher.cia
wget https://github.com/Steveice10/FBI/releases/download/$TAG_FBI/FBI.cia
wget https://github.com/mtheall/ftpd/releases/download/$TAG_FTPD/ftpd.cia
wget https://github.com/Universal-Team/Universal-Updater/releases/download/$TAG_UU/Universal-Updater.cia

cd ..

