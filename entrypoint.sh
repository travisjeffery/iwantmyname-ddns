#!/bin/sh

[ $INTERVAL ] || INTERVAL=0

if [ $INTERVAL -gt 0 ]; then
  while :; do
    curl -u "$USERNAME:$PASSWORD" \
         "https://iwantmyname.com/basicauth/ddns?hostname=$HOSTNAME"
    sleep $INTERVAL
  done
else
  curl -u "$USERNAME:$PASSWORD" \
         "https://iwantmyname.com/basicauth/ddns?hostname=$HOSTNAME"
fi
