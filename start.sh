#!/bin/sh
filepath='/aria2/conf/aria2.conf'
if [! -f $filepath ]; then
cp /aria2/aria2.conf /aria2/conf/aria2.conf
echo "Please modify the configuration file!"
exit 0
else
touch /aria2/conf/aria2.ession
/usr/bin/aria2c --conf-path=/aria2/conf/aria2.conf
fi