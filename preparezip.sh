source ./getcias.sh

# constants because gm9 is suck(if someone maintains this, update it ^^)
GM9_ZIP_NAME=GodMode9-v2.1.1-20220322194259.zip
GM9_LATEST_TAG="v2.1.1" #not worth to pull

# delete zip folder if it exists

rm -rf zip

mkdir zip
cd zip

# zip contents

mkdir finalize
mkdir gm9
mkdir luma

# place cias in finalize

mv ../cias/* finalize

# copy finalizing script

mkdir gm9/scripts
cp ../script/finalize.gm9 gm9/scripts/

# download & copy firm and gm9megascript

mkdir luma/payloads

wget https://github.com/d0k3/GodMode9/releases/latest/download/$GM9_ZIP_NAME
unzip $GM9_ZIP_NAME GodMode9.firm -d luma/payloads
unzip $GM9_ZIP_NAME gm9/scripts/GM9Megascript.gm9 -d finalize

mv finalize/gm9/scripts/GM9Megascript.gm9 finalize/ # get GM9Megascript to finalize root
rm -rf finalize/gm9
rm $GM9_ZIP_NAME

# zip folders

zip -r finalize.zip finalize gm9 luma

# cleanup folders

rm -rf finalize gm9 luma 
cd ..
rm -rf cias