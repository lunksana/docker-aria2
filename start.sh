#!/bin/sh
filepath='/aria2/conf/aria2.conf'
sessionpath='/aria2/conf/aria2.session'
dhtpath='/aria2/conf/dht.dat'

if [ ! -f $filepath ]; then
cp /aria2/aria2.conf /aria2/conf
echo "Please modify the configuration file!"
elif [ ! -f $sessionpath ]; then
touch /aria2/conf/aria2.session
elif [ ! -f $dhtpath ]; then
cp /aria2/dht.dat /aria2/conf
else
/usr/bin/aria2c --conf-path=/aria2/conf/aria2.conf --dir=/aria2/downloads \
--rpc-secret=${SECRET}
fi