#!/bin/sh
rc-status
touch /run/openrc/softlevel
influxd & sleep 5
./telegraf-1.17.0/usr/bin/telegraf --config /telegraf-1.17.0/usr/bin/telegraf.conf
