#!/bin/sh
filepath='/aria2/conf/aria2.conf'
sessionpath='/aria2/conf/aria2.session'
dhtpath='/aria2/conf/dht.dat'

if [ ! -f "$filepath" ]; then
    cp /aria2/aria2.conf /aria2/conf
    touch /aria2/conf/aria2.session
    cp /aria2/dht.dat /aria2/conf
fi

/usr/bin/aria2c --conf-path=$filepath --dir=/aria2/downloads \
--rpc-secret=${SECRET}