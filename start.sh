#!/bin/sh
filepath='/aria2/conf/aria2.conf'
essionpath='/aria2/conf/aria2.ession'
if [ ! -f $filepath ]; then
cp /aria2/aria2.conf /aria2/conf
echo "Please modify the configuration file!"
elif [ ! -f $essionpath ]; then
touch /aria2/conf/aria2.ession
else
/usr/bin/aria2c --conf-path=/aria2/conf/aria2.conf
fi