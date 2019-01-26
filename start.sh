#!/bin/sh
filepath='/aria2/conf/aria2.conf'
sessionpath='/aria2/conf/aria2.session'
dhtpath='/aria2/conf/dht.dat'
list=`wget -qO- https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt|awk NF|sed ":a;N;s/\n/,/g;ta"`

cp /aria2/aria2.conf /aria2/conf
touch /aria2/conf/aria2.senssion
cp /aria2/dht.dat /aria2/conf
sed -i "s@bt-tracker*@bt-tracker=$list@g" $filepath
/usr/bin/aria2c --conf-path=$filepath --dir=/aria2/downloads \
--rpc-secret=${SECRET}