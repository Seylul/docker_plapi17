#!/bin/sh
var=$1
awk 'NR=='$var'' /log/log.txt >> /log/log_messages.txt
cat /log/log_messages.txt
