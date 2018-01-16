#!/bin/sh
filepath='/aria2/conf/aria2.conf'
if [! -f $filepath ]; then
echo "ERROR"
exit 0
else
touch /aria2/conf/aria2.ession
/usr/bin/aria2c --conf-path=/aria2/conf/aria2.conf
fi