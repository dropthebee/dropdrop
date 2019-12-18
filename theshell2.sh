#!/bin/bash

timeout 15s python keyboard_monitor.py 5s > filename
cat -n filename

filecount=$(cat filename | wc -l)

echo $filecount

case $filecount in 0)
	echo "virtual";;
*)
	echo "not virtual";;
esac
