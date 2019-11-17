while true
do
if pgrep -x "z*" > /dev/null
then
    echo "Running"
else
    echo "Stopped"
    ./z*
fi
wget --spider https://paiza.cloud/api/containers/ELKONTA/keepalive?container_token=ELLAST
wget --spider https://paiza.cloud/api/containers/ELKONTA/activeKeepalive?container_token=ELLAST
sleep 120
done
