#!/bin/sh
filepath='/aria2/conf/aria2.conf'
sessionpath='/aria2/conf/aria2.session'
dhtpath='/aria2/conf/dht.dat'
list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`

if [ ! -f $filepath ]; then
cp /aria2/aria2.conf /aria2/conf
echo "Please modify the configuration file!"
elif [ ! -f $sessionpath ]; then
cp /aria2/aria2.session /aria2/conf
elif [ ! -f $dhtpath ]; then
cp /aria2/dht.dat /aria2/conf
else
sed -i "s@bt-tracker*@bt-tracker=$list@g" $filepath
/usr/bin/aria2c --conf-path=$filepath --dir=/aria2/downloads \
--rpc-secret=${SECRET}
fi