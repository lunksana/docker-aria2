#!/bin/sh
filepath='/aria2/conf/aria2.conf'
sessionpath='/aria2/conf/aria2.session'
if [ ! -f $filepath ]; then
cp /aria2/aria2.conf /aria2/conf
echo "Please modify the configuration file!"
elif [ ! -f $sessionpath ]; then
touch /aria2/conf/aria2.session
else
/usr/bin/aria2c --conf-path=/aria2/conf/aria2.conf --dir=/aria2/downloads
fi